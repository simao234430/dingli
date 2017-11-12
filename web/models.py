# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from datetime import date
from tinymce.models import HTMLField
# Create your models here.
from django.forms import widgets
from rest_framework import serializers
from tinymce.widgets import TinyMCE


class IMG_UP(models.Model):
   img = models.ImageField()


class News(models.Model):
    CATEGORY = (
        ('0', '头条新闻'),
        ('1', '焦点关注'),
        ('2', '教学新闻'),

        ('101', '院系设置'),
        ('102', '学校概况'),
        ('103', '教育教学'),
        ('104', '党建学工'),
        ('105', '工程实训'),
        ('106', '新闻动态'),
        ('107', '招生就业'),
        ('108', '人才招聘'),
        ('109', '校友会'),
        ('110', '师资队伍'),
    )

    content = HTMLField()
    title = models.CharField(max_length=60)
    brief_image_url = models.CharField(max_length=60,blank=True, null=True,default="")
    edit_person = models.CharField(max_length=30)
    edit_time= models.DateField(auto_now=True)
    category = models.CharField(max_length=4,choices=CATEGORY)
    importance = models.IntegerField(default=1000)
    PV = models.IntegerField(default=0)
    index =  models.IntegerField(default=0)
    ph = models.ImageField(u'图片', upload_to='uploadImages', null=True, blank=True)
    brief_content =  HTMLField()


    def __str__(self):
        return self.title[0:30]

    def __unicode__(self):
        return self.title[0:30]

class Image(models.Model):
    file = models.FileField('File', upload_to='uploadImages/')

    def __str__(self):
        return self.filename

    @property
    def filename(self):
        return self.file.name.rsplit('/', 1)[-1]

class Person(models.Model):

    name = models.CharField(max_length=30)
    title = models.CharField(max_length=30)
    image_url = models.CharField(max_length=30)
    detail = models.TextField(max_length=300)
    detail_more = models.TextField(max_length=300)
    group = models.CharField(max_length=30)
    contact = models.TextField(max_length=300)

    def __unicode__(self):
        return self.name

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('group',)
    # def __iter__(self):
    #     return [self.name,
    #             self.title,
    #             self.contact,
    #             self.detail,
    #             self.weight,
    #             self.image_url]

    def as_dict(self):
        return {
            "id": self.id,
            "name": self.name,
            "title": self.title,
            "image_url": self.image_url,
            "detail": self.detail,
             "group": self.group,
            # other stuff
        }
#
# class PersonSerializer(serializers.Serializer):
#     #pk = serializers.Field()  # Note: `Field` is an untyped read-only field.
#     title = serializers.CharField(required=False,
#                                   max_length=30)
#     name = serializers.CharField(required=False,
#                                   max_length=30)
#     contact = serializers.CharField(required=False,
#                                   max_length=30)
#     detail = serializers.CharField(required=False,
#                                   max_length=300)
#     group = serializers.CharField(required=False,
#                                   max_length=300)
#     image_url = serializers.CharField(required=False,
#                                    max_length=30)
#
#     def create(self, validated_data):
#         return Person(**validated_data)
#
#     def restore_object(self, attrs, instance=None):
#         """
#         Create or update a new snippet instance.
#         """
#         if instance:
#             # Update existing instance
#             instance.title = attrs['title']
#             instance.name = attrs['name']
#             instance.image_url = attrs['image_url']
#             instance.group = attrs['group']
#             instance.detail = attrs['detail']
#             return instance
#
#         # Create new instance
#         return Person(**attrs)

# class PersonSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Person
#         fields = ('id', 'title', 'name', 'detail', 'contact', 'weight','image_url')