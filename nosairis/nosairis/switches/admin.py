from django.contrib import admin
# noinspection PyUnresolvedReferences
from switches.models import Ping, Report
# Register your models here.

admin.site.register(Ping)
admin.site.register(Report)
