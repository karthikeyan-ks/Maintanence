# Generated by Django 5.0 on 2023-12-18 14:42

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_activity_activity_status_id'),
    ]

    operations = [
        migrations.CreateModel(
            name='ChangeSeeker',
            fields=[
                ('ChangeSeeker_id', models.IntegerField(primary_key=True, serialize=False)),
                ('Changed_activity_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.activity')),
            ],
        ),
    ]