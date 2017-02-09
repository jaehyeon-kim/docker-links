FROM jaehyeon/redis
MAINTAINER Jaehyeon Kim "dottami@gmail.com"
ENV REFRESHED_AT 2016-06-01

# redis_replica fails to recognize redis_primary's ip
# just a hack, to be updated
# http://stackoverflow.com/questions/31113682/guestbook-example-not-working-unable-to-connect-to-master
#RUN echo '172.18.0.2      redis-primary' >> /etc/hosts

ENTRYPOINT [ "redis-server", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis-primary 6379" ]

