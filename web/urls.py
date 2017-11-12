#coding=utf-8
from django.conf.urls import include, url
from django.views.generic import TemplateView
from django.conf.urls.static import static
from django.conf import settings
from web.views import index,get_persons,Teachers,News_detail, \
    News_sort,about_1,about_2,about_3,about_4,about_5,about_6,about, \
    setting_1,setting_2,setting_3,setting
urlpatterns = [
    url(r'^$', index, name='index'),
    url(r'^Person/Teachers$', Teachers, name='Teachers'),
    # url(r'^News_detail$', News_detail, name='News_detail'),
    url(r'^News_sort/(\d+)/$', News_sort, name='News_sort'),
    url(r'^News_detail/(\d+)/$', News_detail, name='News_detail'),

    # url(r'api/Person_list', get_persons, name='Person_list'),
    url(r'^setting/(\d+)$', setting, name='setting'),
    url(r'^setting_1$', setting_1, name='setting_1'),
    url(r'^setting_2$', setting_2, name='setting_2'),
    url(r'^setting_3$', setting_3, name='setting_3'),

    #about 页面
    url(r'^about_1$', about_1,name='about_1'),
    url(r'^about_2$', about_2,name='about_2'),
    url(r'^about_3$', about_3,name='about_3'),
    url(r'^about_4$', about_4,name='about_4'),
    url(r'^about_5$', about_5,name='about_5'),
    url(r'^about_6$', about_6,name='about_6'),

    url(r'^about/(\d+)$', about, name='about'),



]

urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)