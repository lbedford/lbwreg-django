#!/bin/bash

cd /app
python3 manage.py collectstatic --noinput
python3 manage.py migrate --run-syncdb

# WORKERS is set in deployment
exec gunicorn -b :8000 -w ${WORKERS:-4} --forwarded-allow-ips="*" --capture-output lbw.wsgi
