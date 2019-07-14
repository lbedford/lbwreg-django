#!/bin/bash

cd /app
python3 manage.py collectstatic --noinput
python3 manage.py migrate --run-syncdb

exec gunicorn -b :8000 -w 4 --forwarded-allow-ips="*" --capture-output lbw.wsgi
