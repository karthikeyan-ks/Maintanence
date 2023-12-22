from django.shortcuts import render
from django.http import JsonResponse
from django.http import response
from .models import Machine,Component,Activity,Schedule,ChangeSeeker,ChangeType,Report,Users,Task,Status
from django.core import serializers
from django.shortcuts import get_list_or_404
import json
from django.views.decorators.csrf import csrf_exempt

def MachineHandler(request):
    print(request)
    queryMachineset = Machine.objects.all()
    machine_data = serializers.serialize('json', queryMachineset)
    jsonFormatted = json.loads(machine_data)
    index = []  # Create an empty list to hold indices
    for i in range(len(jsonFormatted)):
        index.append(str(i))  # Append index as a string to the list
    response = dict(zip(index, jsonFormatted))  # Combine indices with JSON data
    print({"response":response})
    return JsonResponse(data={'response':response}, safe=False)

def ComponentHandler(request):
    queryMachineset = Component.objects.all()
    machine_data = serializers.serialize('json', queryMachineset)
    jsonFormatted = json.loads(machine_data)
    index = []  # Create an empty list to hold indices
    for i in range(len(jsonFormatted)):
        index.append(str(i))  # Append index as a string to the list
    response = dict(zip(index, jsonFormatted))  # Combine indices with JSON data
    print({"response":response})
    return JsonResponse(data={'response':response}, safe=False)

def ScheduleHandler(request):
    print(request)
    queryMachineset = Schedule.objects.all()
    machine_data = serializers.serialize('json', queryMachineset)
    jsonFormatted = json.loads(machine_data)
    index = []  # Create an empty list to hold indices
    for i in range(len(jsonFormatted)):
        index.append(str(i))  # Append index as a string to the list
    response = dict(zip(index, jsonFormatted))  # Combine indices with JSON data
    print({"response":response})
    return JsonResponse(data={'response':response}, safe=False)

@csrf_exempt
def UpadateHandler(req):
    if req.method =='POST':
        reqstr=req.body
        jsonobj=json.loads(reqstr)
        #print(jsonobj)
        name_activity=jsonobj['activity_name']
        activity_description=jsonobj['activity_description']
        scheduleId=int(jsonobj['ScheduleId'])
        componentId=int(jsonobj['ComponentId'])
        machineId=int(jsonobj['MachineId'])
        machineIdn= Machine.objects.get(machine_id=machineId)
        componentIdn=Component.objects.get(component_id=componentId)
        scheduleIdn=Schedule.objects.get(schedule_id=scheduleId)
        print(type(machineId),componentId,scheduleId)
        activity=Activity.objects.create(
            activity_name=name_activity,
            activity_description=activity_description,
            activity_machine_id=machineIdn,
            activity_component_id=componentIdn,
            activity_schedule_id=scheduleIdn,
            activity_status_id=Status.objects.get(status_id=1)  
            )
        activity.save()
        return response.HttpResponse(1) 
    else:
        return response.HttpResponse(0)
    
def ActivityHandler(req):
    obj=Activity.objects.all().order_by('activity_id')
    objjson=serializers.serialize('json',obj)
    objformatted=json.loads(objjson)
    index=[]
    for i in range(len(objformatted)):
        index.append(str(i))  # Append index as a string to the list
    response = dict(zip(index, objformatted)) 
    print(response)
    return JsonResponse(data={'response':response},safe=False)

def CheckHandler(req):
    obj=ChangeSeeker.objects.all()
    print(req.body)
    return response.HttpResponse(len(obj))

def checkDoubleHandler(req):
    obj=ChangeSeeker.objects.order_by('ChangeSeeker_id').last()
    obj2=obj.change_activity_type_id
    objs=   {
        'change_seeker_id':obj.ChangeSeeker_id,
        'change_activity_id':obj.Changed_activity_id,
        'change_activity_type_id':obj2.change_type,
        'position':obj.position_number
    }
 #   obj_json = json.loads(str(objs))
    print({'response':objs})
    return JsonResponse({'response':objs},safe=False)

@csrf_exempt
def checkLast(req):
    if req.method=='POST':
        body_unicode = req.body.decode('utf-8')
        print('post body',body_unicode)
        obj=Activity.objects.get(activity_id=body_unicode)
        print(obj)
        #print(len(obj))
        print(obj.activity_name)
        return JsonResponse({
            'activity_id':obj.activity_id,
            'activity_name':obj.activity_name,
            'activity_description':obj.activity_description,
            'activity_machine_id':obj.activity_machine_id.machine_id,
            'activity_component_id':obj.activity_component_id.component_id,
            'activity_schedule_id':obj.activity_schedule_id.schedule_id,
            'activity_status_id':obj.activity_status_id.status_id
        })
    else:
        return JsonResponse({})
    
def ReportHandler(req):
    obj=Report.objects.all()

@csrf_exempt
def loginHandler(req):
    objstr=req.body
    obj=json.loads(objstr)
    username=obj['username']
    password=obj['password']
    user = Users.objects.filter(user_name=username, user_password=password).first()
    return JsonResponse({
        'username':user.user_name,
        'userID':user.user_id,
        'userMode':user.user_mode
    })

@csrf_exempt
def checkTask(request):
    
    user_id = int(request.body)  # Extracting user_id from the request body
    tasks = Task.objects.filter(task_assign_to=user_id)
    
    response = {}
    for task in tasks:
        activity = Activity.objects.filter(activity_id=task.task_activity_id.activity_id).first()
        if activity:
            # Serialize the activity object and update the response dictionary
            activity_json = serializers.serialize('json', [activity])
            activity_data = json.loads(activity_json)[0]
            activity_datas={str(activity.pk):activity_data}  # Load serialized data
            response.update(activity_datas)
    print({'reponse':response})
    return JsonResponse({'response': response})

@csrf_exempt
def submitHandler(req): 
    if req.method =='POST':
        reqstr=req.body
        jsonobj=json.loads(reqstr)
        print(jsonobj)
        activity_id=jsonobj['activity_id']
        text=jsonobj['submitText']
        user_id=jsonobj['user_id']
        activity=Activity.objects.filter(activity_id=activity_id).first()
        print(activity_id)
        user=Users.objects.filter(user_id=user_id).first()
        isinstance=Report.objects.create(
            report_activity=activity,
            report_text=text,
            report_user_id=user
            )
        isinstance.save()
        return response.HttpResponse(100)
    else:
        return response.HttpResponse(10)

import re

@csrf_exempt
def UserHandler(req):
    if req.method=='POST':
        body_unicode = req.body.decode('utf-8')
        body_unicode_cleaned = body_unicode.strip()
        # Remove non-alphanumeric characters, if needed
        body_unicode_cleaned = re.sub(r'\W+', '', body_unicode_cleaned)

        # Use the cleaned string in the filter
        obj = Users.objects.filter(user_mode='B').filter(user_name__icontains=body_unicode_cleaned)

        print(len(obj))
        objjson=serializers.serialize('json',obj)
        objformatted=json.loads(objjson)
        index=[]
        for i in range(len(objformatted)):
            index.append(str(i))  # Append index as a string to the list
        response = dict(zip(index, objformatted)) 
        print(response)
        return JsonResponse(data={'response':response},safe=False)
    else:
        return JsonResponse({})
    
@csrf_exempt
def TaskHandler(req):
    if req.method=='POST':
        str=req.body
        jsonobj=json.loads(str)
        print(jsonobj)
        user=Users.objects.filter(user_name=jsonobj['task_assigned_to']).first()
        activity=Activity.objects.filter(activity_id=jsonobj['task_activity_id']).first()
        activity.activity_status_id=Status.objects.get(status_id=2)
        print(user)
        Task.objects.create(task_assign_to=user,task_activity_id=activity).save()
        activity.save()
        print(jsonobj)
        return response.HttpResponse(100)
    
@csrf_exempt
def ReportViewHandler(req):
    if req.method=='POST':
        body_unicode = req.body.decode('utf-8')
        body_unicode_cleaned = body_unicode.strip()
        # Remove non-alphanumeric characters, if needed
        body_unicode_cleaned = re.sub(r'\W+', '', body_unicode_cleaned)
        print(body_unicode_cleaned)

        # Use the cleaned string in the filter
        objAct=Activity.objects.filter(activity_id=int(body_unicode_cleaned)).first()
        print(objAct)
        obj = Report.objects.filter(report_activity=objAct).first()
        print(obj)
        return JsonResponse({"report":obj.report_text})
    else:
        return JsonResponse({})

@csrf_exempt
def updateActivity(req):
    if req.method=='POST':
        body_unicode = req.body.decode('utf-8')
        body_unicode_cleaned = body_unicode.strip()
        # Remove non-alphanumeric characters, if needed
        body_unicode_cleaned = re.sub(r'\W+', '', body_unicode_cleaned)
        print(body_unicode_cleaned)

        # Use the cleaned string in the filter
        objAct=Activity.objects.filter(activity_id=int(body_unicode_cleaned)).first()
        objAct.activity_status_id=Status.objects.get(status_id=1)
        objAct.save()
        return response.HttpResponse(100)
    else:
        return response.HttpResponse("access denied")