# Generated by Django 5.0 on 2023-12-18 16:00

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0006_changetype'),
    ]

    operations = [
        migrations.AddField(
            model_name='changeseeker',
            name='change_activity_type_id',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='home.changetype'),
        ),
    ]