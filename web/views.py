# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.forms.models import model_to_dict
from django.db import models
from django.shortcuts import render
import json
from django.core.serializers.json import DjangoJSONEncoder
from models import Person
# Create your views here.
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from models import Person,News
from django.forms.models import model_to_dict
# from models import PersonSerializer
from django.core import serializers

class JSONResponse(HttpResponse):
    """
    An HttpResponse that renders it's content into JSON.
    """
    def __init__(self, data, **kwargs):
        content = JSONRenderer().render(data)
        kwargs['content_type'] = 'application/json'
        super(JSONResponse, self).__init__(content, **kwargs)

def index(request):
    return render(request, 'base.html',{'news_list': News.objects.filter(category=0).order_by("-importance","-edit_time")[:3]
                  ,'focus_news_list': News.objects.filter(category=1).order_by("-importance","-edit_time")[:6]})
    #return  # blow up as this view is normally non-reachable!

def News_detail(request, ID):
    # person_list = serializers.serialize( "python", Person.objects.all() )
    news_detail = News.objects.get(id=int(ID))
    news_detail.PV = news_detail.PV + 1
    news_detail.save()
    return render(request, 'News_detail.html',{'news_list': News.objects.all().order_by("-edit_time"),"news_detail":news_detail})


def News_sort(request, category):
    # person_list = serializers.serialize( "python", Person.objects.all() )
    print category
    return render(request, 'News_sort.html',{'news_list_sort': News.objects.filter(category=category).order_by("-edit_time")})

def Teachers(request):
    # person_list = serializers.serialize( "python", Person.objects.all() )
    return render(request, 'Teachers.html',{'person_list': Person.objects.all()})

def get_persons(request):
    # data = serializers.serialize("json", Person.objects.all().values('name'))
    # return JSONResponse(data)

    dictionaries = [obj.as_dict() for obj in Person.objects.all()]
    return HttpResponse(json.dumps(dictionaries), content_type='application/json')
    #return json.dumps([dict(item) for item in Person.objects.all()])

def get_queryset():
    pass

def about_1(request):
    return render(request, 'about_1.html')

def about_2(request):
    return render(request, 'about_2.html')

def about_3(request):
    return render(request, 'about_3.html')

def about_4(request):
    return render(request, 'about_4.html')

def about_5(request):
    return render(request, 'about_5.html')

def about_6(request):
    return render(request, 'about_6.html')
def setting_1(request):
    return render(request, 'setting_1.html')
def setting_2(request):
    return render(request, 'setting_2.html')
def setting_3(request):
    return render(request, 'setting_3.html')

def setting(request, index):
    index_category = {
        0: u"软件系",
        1: u"通信系",
        2: u"电子系"
    }
    news = News.objects.get(category='101',index=index)
    #'news': News.objects.filter(category='101',index=index()), "index_category":index_category,
    return render(request, 'setting.html',{'news': news,"index":index, "index_display":index_category[int(index)]})

def about(request, index):
    index_category = {
        0: u"校长致辞",
        1: u"学院介绍",
        2: u"世纪鼎利",
        3: u"鼎利教育研究院",
        4: u"现任领导",
        5: u"组织机构",
    }
    news = News.objects.get(category='102', index=index)
    # 'news': News.objects.filter(category='101',index=index()), "index_category":index_category,
    return render(request, 'about.html',{'news': news,"index":index, "index_display":index_category[int(index)]})

        #
# @csrf_exempt
# def Person_list(request):
#     """
#     List all code snippets, or create a new snippet.
#     """
#     if request.method == 'GET':
#         persons = Person.objects.all()
#         print len(persons)
#         serializer = PersonSerializer(persons)
#         return JSONResponse(serializer.data)
#
#     elif request.method == 'POST':
#         data = JSONParser().parse(request)
#         serializer = PersonSerializer(data=data)
#         if serializer.is_valid():
#             serializer.save()
#             return JSONResponse(serializer.data, status=201)
#         else:
#             return JSONResponse(serializer.errors, status=400)