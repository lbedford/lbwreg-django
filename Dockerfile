FROM python:3
LABEL maintainer="lbedford@lbedford.org"

ENV PROJECT_ROOT /app
ENV PYTHONUNBUFFERED 1

RUN mkdir $PROJECT_ROOT
WORKDIR $PROJECT_ROOT

ADD . $PROJECT_ROOT/
RUN apt update && apt install -y build-essential libmariadb-dev && apt clean
RUN pip install -r requirements.txt

CMD /app/startup.sh
