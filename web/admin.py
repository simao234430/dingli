# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

# Register your models here.


from models import Person,News,Image
from multiupload.admin import MultiUploadAdmin
@admin.register(Person)
class PersonAdmin(admin.ModelAdmin):
    pass

# @admin.register(News)
# class ImageInline(admin.TabularInline):
#     model = IMG_UP()

#
# class ImageInline(admin.TabularInline):
#     model = IMG_UP
#



class GalleryMultiuploadMixing(object):

    def process_uploaded_file(self, uploaded, gallery, request):

        image = Image.objects.create(file=uploaded)
        return {
            'url': image.file.url,
            'thumbnail_url': image.file.url,
            'id': image.id,
            'name': image.filename
        }

class ImageAdmin(GalleryMultiuploadMixing,MultiUploadAdmin):
    multiupload_form = False
    multiupload_list = True



admin.site.register(Image, ImageAdmin)

@admin.register(News)
class NewsAdmin(admin.ModelAdmin):
    class Media:
        js = (
            '/webmedia/tinymce/tinymce.min.js',
            '/webmedia/tinymce/textareas.js',
        )

    pass
