FROM alpine:latest

RUN apk --no-cache add redis \
    && mkdir -p /data \
    && echo "include /etc/redis.d/*.conf" >> /etc/redis.conf

COPY 00_docker.conf /etc/redis.d/00_docker.conf
COPY entrypoint.sh /entrypoint.sh

EXPOSE 6379
VOLUME /data

ENV REDIS_PASSWORD password

ENTRYPOINT ["/entrypoint.sh"]
