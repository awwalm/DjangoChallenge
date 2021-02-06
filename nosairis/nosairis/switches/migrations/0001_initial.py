# Generated by Django 3.1.6 on 2021-02-04 20:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Ping',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('switch_label', models.CharField(default='', max_length=100)),
                ('terminal_1', models.SmallIntegerField(default=0)),
                ('terminal_2', models.SmallIntegerField(default=0)),
                ('terminal_3', models.SmallIntegerField(default=0)),
                ('terminal_4', models.SmallIntegerField(default=0)),
                ('terminal_5', models.SmallIntegerField(default=0)),
                ('unix_timestamp', models.CharField(default='1612469777', max_length=500)),
                ('ping_status', models.SmallIntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Report',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('switch_name', models.CharField(default='SW-', max_length=100)),
                ('alert_type', models.CharField(default='N/A', max_length=255)),
                ('alert_date_time', models.CharField(default='2021-02-04 20:16:17', max_length=500)),
                ('email_date_time', models.CharField(default='2021-02-04 20:16:17', max_length=500)),
            ],
        ),
    ]