# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-11-10 02:50
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0017_auto_20171109_0148'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='category',
            field=models.CharField(choices=[('0', '\u5934\u6761\u65b0\u95fb'), ('1', '\u7126\u70b9\u5173\u6ce8'), ('2', '\u6559\u5b66\u65b0\u95fb'), ('101', '\u9662\u7cfb\u8bbe\u7f6e'), ('102', '\u5b66\u6821\u6982\u51b5'), ('103', '\u6559\u80b2\u6559\u5b66'), ('104', '\u515a\u5efa\u5b66\u5de5'), ('105', '\u5de5\u7a0b\u5b9e\u8bad'), ('106', '\u65b0\u95fb\u52a8\u6001'), ('107', '\u62db\u751f\u5c31\u4e1a'), ('108', '\u4eba\u624d\u62db\u8058'), ('109', '\u6821\u53cb\u4f1a'), ('110', '\u5e08\u8d44\u961f\u4f0d')], max_length=4),
        ),
    ]
