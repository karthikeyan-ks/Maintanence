# Generated by Django 5.0 on 2023-12-21 18:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0016_task'),
    ]

    operations = [
        migrations.AlterField(
            model_name='users',
            name='user_name',
            field=models.CharField(max_length=30, unique=True),
        ),
    ]
