#!/usr/bin/env sh
set -e

if [ "${REDIS_PASSWORD}" = '' ]; then
  echo "# No password" >/etc/redis.d/01_password.conf
else
  echo "requirepass ${REDIS_PASSWORD}" >/etc/redis.d/01_password.conf
fi

redis-server /etc/redis.conf
