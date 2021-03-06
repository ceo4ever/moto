# -*- coding: utf-8 -*-
# Generated by Django 1.10.4 on 2016-12-04 09:24
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ProductA',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name_kr', models.CharField(max_length=128, unique=True, verbose_name='\ud55c\uad6d\uc5b4\uc774\ub984(name_kr)')),
                ('name_en', models.CharField(max_length=128, unique=True, verbose_name='\uc601\uc5b4\uc774\ub984(name_en)')),
                ('maker_code', models.IntegerField(unique=True, verbose_name='\uba54\uc774\ucee4\ucf54\ub4dc(maker_code)')),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
            ],
            options={
                'ordering': ['id'],
                'db_table': 'product_a',
            },
        ),
    ]
