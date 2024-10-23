FROM golang:1.23
ENV LIBRDKAFKA_VERSION="v2.6.0"
# setup librdkafka

RUN wget -qO - https://packages.confluent.io/deb/7.7/archive.key | apt-key add - &&\
    echo "deb https://packages.confluent.io/deb/7.7 stable main" >> /etc/apt/sources.list.d/confluent.list &&\
    echo "deb https://packages.confluent.io/clients/deb $(grep '^VERSION_CODENAME=' /etc/os-release | cut -d '=' -f 2) main" >> /etc/apt/sources.list.d/confluent.list &&\   
    apt-get update &&\
    apt-get install -y --no-install-recommends librdkafka-dev &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

