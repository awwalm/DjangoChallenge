import time
from datetime import datetime

from django.db import models

# Create your models here.

import os
from django.db import models
from django.urls import reverse
from django.utils.text import slugify


"""
https://stackoverflow.com/questions/3682748/converting-unix-timestamp-string-to-readable-date
"""

# django.setup()
# os.environ['DJANGO_SETTINGS_MODULE'] = 'switches.settings'
current_time = int(time.time())
time_stamp = str(datetime.utcfromtimestamp(current_time).strftime('%d/%m/%Y %H:%M:%S'))


# Direct skin class for the imported CSV
class Ping(models.Model):
    switch_label = models.CharField(default='', max_length=100)
    terminal_1 = models.SmallIntegerField(default=0)
    terminal_2 = models.SmallIntegerField(default=0)
    terminal_3 = models.SmallIntegerField(default=0)
    terminal_4 = models.SmallIntegerField(default=0)
    terminal_5 = models.SmallIntegerField(default=0)
    unix_timestamp = models.CharField(default=str(int(time.time())), max_length=500)
    ping_status = models.SmallIntegerField(default=0)

    def __str__(self):
        return self.switch_label

    def save(self, *args, **kwargs):
        self.slug = slugify(self.switch_label)
        super().save(*args, **kwargs)


# Custom skin class to represent the report page
class Report(models.Model):
    switch_name = models.CharField(default='SW-', max_length=100)
    alert_type = models.CharField(default='N/A', max_length=255)
    alert_date_time = models.CharField(default=time_stamp, max_length=500)
    email_date_time = models.CharField(default=time_stamp, max_length=500)

    def __str__(self):
        return 'SW-' + str(self.switch_name)

    def save(self, *args, **kwargs):
        self.slug = slugify('SW-' + str(self.switch_name))
        super().save(*args, **kwargs)


# Now each switch gets its own database to be used for simplified plotting
class Switch1(models.Model):
    ping_status = models.SmallIntegerField(default=0)
    unix_timestamp = models.CharField(default=str(int(time.time())), max_length=500)
    alert_date_time = models.CharField(default=time_stamp, max_length=500)


class Switch2(models.Model):
    ping_status = models.SmallIntegerField(default=0)
    unix_timestamp = models.CharField(default=str(int(time.time())), max_length=500)
    alert_date_time = models.CharField(default=time_stamp, max_length=500)


class Switch3(models.Model):
    ping_status = models.SmallIntegerField(default=0)
    unix_timestamp = models.CharField(default=str(int(time.time())), max_length=500)
    alert_date_time = models.CharField(default=time_stamp, max_length=500)
