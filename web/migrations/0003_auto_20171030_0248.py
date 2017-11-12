# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-10-30 02:48
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_news'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='brief_content',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='news',
            name='brief_image_url',
            field=models.CharField(max_length=60),
        ),
        migrations.AlterField(
            model_name='news',
            name='title',
            field=models.CharField(max_length=60),
        ),
    ]
