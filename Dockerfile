FROM python:3.8-alpine
MAINTAINER Niels Anbeek

ENV PYTHONUNBUFFERED 1

#install requirements
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#copy app into docker
RUN mkdir /app
WORKDIR /app
COPY ./app /app

#create user to run the app, for security reasons
RUN adduser -D user
USER user


