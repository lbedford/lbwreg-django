FROM python:3-slim
LABEL maintainer="lbedford@lbedford.org"

ENV PROJECT_ROOT /app
WORKDIR $PROJECT_ROOT

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN git clone https://github.com/lbedford/registration.git
RUN git clone https://github.com/lbedford/accounts.git
COPY . .
CMD python manage.py runserver 0.0.0.0:8000
