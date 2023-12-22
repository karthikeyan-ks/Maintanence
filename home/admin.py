from django.contrib import admin
from .models import Activity,Machine,Component,Schedule,Status,ChangeType,Report,Users,Task
# Register your models here.


admin.site.register(Machine)
admin.site.register(Component)
admin.site.register(Schedule)
admin.site.register(Activity)
admin.site.register(Status)
admin.site.register(Report)
admin.site.register(ChangeType)
admin.site.register(Users)
admin.site.register(Task)



