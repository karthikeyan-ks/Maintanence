# Generated by Django 5.0 on 2023-12-21 13:57

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0013_schedule_schedule_value'),
    ]

    operations = [
        migrations.CreateModel(
            name='report',
            fields=[
                ('report_id', models.AutoField(primary_key=True, serialize=False)),
                ('report_text', models.TextField()),
                ('report_activity', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.activity')),
            ],
        ),
    ]