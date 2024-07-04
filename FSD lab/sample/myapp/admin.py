from django.contrib import admin

# Register your models here.
from myapp.models import Project, Student
admin.site.register(Student)
admin.site.register(Project)
