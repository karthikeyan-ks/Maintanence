# Generated by Django 5.0 on 2023-12-18 17:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0007_changeseeker_change_activity_type_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='changeseeker',
            name='Changed_activity_id',
            field=models.IntegerField(),
        ),
    ]
