#!/usr/bin/env sh
set -e

if [ "${REDIS_PASSWORD}" = '' ]; then
  echo "" >/etc/redis-password.conf
else
  echo "requirepass ${REDIS_PASSWORD}" >/etc/redis-password.conf
fi

redis-server /etc/redis.conf
