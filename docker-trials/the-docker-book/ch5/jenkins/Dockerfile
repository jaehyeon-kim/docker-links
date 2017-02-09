FROM jenkins
MAINTAINER Jaehyeon Kim "dottami@gmail.com"
ENV REPRESHED_AT 2016-06-01

USER root
RUN apt-get -yqq update && apt-get install -yqq sudo
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN wget http://get.docker.com/builds/Linux/x86_64/docker-latest.tgz
RUN tar -xvzf docker-latest.tgz
RUN mv docker/* /usr/bin/

USER jenkins
RUN /usr/local/bin/install-plugins.sh junit git git-client ssh-slaves greenballs chucknorris

