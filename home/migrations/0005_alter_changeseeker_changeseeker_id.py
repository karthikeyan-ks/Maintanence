# Generated by Django 5.0 on 2023-12-18 15:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_changeseeker'),
    ]

    operations = [
        migrations.AlterField(
            model_name='changeseeker',
            name='ChangeSeeker_id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
