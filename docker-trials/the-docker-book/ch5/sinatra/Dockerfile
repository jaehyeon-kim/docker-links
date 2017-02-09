FROM ubuntu:16.04
MAINTAINER Jaehyeon Kim "dottami@gmail.com"
ENV REFRESHED_AT 2016-06-01

RUN apt-get update -yqq && apt-get install -yqq ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD ["/opt/webapp/bin/webapp"]

