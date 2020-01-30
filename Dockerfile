FROM golang:1.12-alpine
#ENV LIBRDKAFKA_VERSION "v1.2.1"
# setup librdkafka
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories &&\
    apk update --no-cache &&\
    apk add \
    librdkafka=1.3.0-r0 \
    librdkafka-dev=1.3.0-r0 \
    git \
    openssh \
    gcc \
    g++
