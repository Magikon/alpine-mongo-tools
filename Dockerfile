FROM alpine:latest
MAINTAINER Mikayel Galyan "admin@zzillasoft.com"

RUN apk add s3cmd --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN apk add --no-cache mongodb-tools
RUN apk add --no-cache bash
RUN rm -f /var/cache/apk/*
COPY main.sh /bin/main.sh

ENTRYPOINT ["bash"]
CMD ["/bin/main.sh"]
