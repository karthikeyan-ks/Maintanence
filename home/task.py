# tasks.py

from celery import shared_task
from datetime import timedelta
from django.utils import timezone
from .models import Activity  # Replace 'YourModel' with your actual model

@shared_task
def check_table_values():
    # Query the table and perform necessary checks
    queryset = Activity.objects.filter(...)  

    # Perform operations on queryset or check specific values

# Define a periodic task with Celery Beat
@shared_task(run_every=timedelta(hours=1))
def periodic_check_table_values():
    check_table_values.delay()  # Execute your task asynchronously
