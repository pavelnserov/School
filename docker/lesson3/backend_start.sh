#!/usr/bin/env bash

service nginx start
python3 manage.py migrate
python3 manage.py createsuperuser --username admin --noinput --email admin@admin.local
python3 ./manage.py runserver
