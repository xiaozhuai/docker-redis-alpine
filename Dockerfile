FROM alpine:latest

RUN apk --no-cache add redis \
    && mkdir -p /data \
    && echo "include /etc/redis-docker.conf" >> /etc/redis.conf \
    && echo "include /etc/redis-password.conf" >> /etc/redis.conf

COPY redis-docker.conf /etc/redis-docker.conf
COPY entrypoint.sh /entrypoint.sh

EXPOSE 6379
VOLUME /data

ENV REDIS_ALLOW_EMPTY_PASSWORD no
ENV REDIS_PASSWORD root

ENTRYPOINT /entrypoint.sh
