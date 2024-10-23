FROM golang:1.23-alpine
# setup librdkafka
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories &&\
    apk update  &&\
    apk add --no-cache \
    librdkafka=2.6.0-r0\
    librdkafka-dev=2.6.0-r0 \
