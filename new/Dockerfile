FROM alpine:3.15.11

RUN apk --no-cache update; \
    apk add --no-cache redis
EXPOSE 6379
CMD ["redis-server"]
