FROM ubuntu:16.04
MAINTAINER Jaehyeon Kim "dottami@gmail.com"
ENV REFRESHED_AT 2016-06-01
RUN apt-get -yqq update && apt-get -yqq install redis-server redis-tools
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
CMD []

