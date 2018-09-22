FROM python:3-slim
LABEL maintainer="lbedford@lbedford.org"

ENV PROJECT_ROOT /app
ENV PYTHONUNBUFFERED 1

RUN mkdir $PROJECT_ROOT
WORKDIR $PROJECT_ROOT

ADD requirements.txt $PROJECT_ROOT/
RUN pip install -r requirements.txt
ADD . $PROJECT_ROOT/
