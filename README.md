# redis-alpine

## no password

```yaml
version: '2'
services:
    redis:
        image: xiaozhuai/redis-alpine:latest
        ports:
            - 6379:6379
        environment:
            REDIS_ALLOW_EMPTY_PASSWORD: "yes"
```

## password

```yaml
version: '2'
services:
    redis:
        image: xiaozhuai/redis-alpine:latest
        ports:
            - 6379:6379
        environment:
            REDIS_PASSWORD: "password"
```

## persistence

```yaml
version: '2'
services:
    redis:
        image: xiaozhuai/redis-alpine:latest
        volumes:
            - ./data:/data
        ports:
            - 6379:6379
```
