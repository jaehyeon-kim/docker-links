# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Jaehyeon Kim "dottami@gmail.com"
## refresh APT package cache
# ENV REFRESHED_AT 2016-10-20
# RUN apt-get -qq update
RUN apt-get update && apt-get install -y nginx
## without shell (/bin/sh -c)
# RUN ["apt-get", " install", "-y", "nginx"]
## 16.04
# RUN echo 'Hi, I am in your container' > /var/www/html/index.html
RUN echo 'Hi, I am in your container' > /usr/share/nginx/html/index.html
EXPOSE 80

