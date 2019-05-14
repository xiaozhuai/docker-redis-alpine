#!/usr/bin/env sh

if [[ "$REDIS_ALLOW_EMPTY_PASSWORD" == 'yes' ]]; then
    echo "" > /etc/redis-password.conf
else
    if [[ "$REDIS_PASSWORD" == '' ]]; then
        echo "REDIS_PASSWORD not set, use \"root\" for default"
        echo "requirepass root" > /etc/redis-password.conf
    else
        echo "requirepass $REDIS_PASSWORD" > /etc/redis-password.conf
    fi
fi

redis-server /etc/redis.conf
