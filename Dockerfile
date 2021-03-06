FROM alpine:latest
MAINTAINER Mikayel Galyan "admin@zzillasoft.com"

RUN apk add s3cmd --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN apk add --no-cache mongodb-tools
RUN apk add --no-cache bash
RUN rm -f /var/cache/apk/*

ENTRYPOINT ["sh", "-c", "while :; do sleep 3600; done"]
