FROM ubuntu:16.04
MAINTAINER Jaehyeon Kim "dottami@gmail.com"
ENV REFRESHED 2016-06-01

RUN apt-get -yqq update
RUN apt-get -yqq install software-properties-common python-software-properties
RUN add-apt-repository ppa:chris-lea/redis-server
RUN apt-get -yqq update
RUN apt-get -yqq install redis-server redis-tools

VOLUME [ "/var/lib/redis", "/var/log/redis" ]

EXPOSE 6379
CMD []

