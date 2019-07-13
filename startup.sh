#!/bin/bash

cd /app
python3 manage.py collectstatic
python3 manage.py migrate --run-syncdb

exec gunicorn -w 4 --forwarded-allow-ips="*" lbw.wsgi
