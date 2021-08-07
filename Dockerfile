FROM ubuntu:18.04
MAINTAINER test <test@example.com>

RUN \
  apt-get update && \
  apt-get -y install \
    sudo \
    iproute2 \
    iputils-ping \
    traceroute \
    tcpdump \
    dnsmasq-base \
    dnsutils \
    netcat-openbsd \
    python3 \
    curl \
    wget \
    iptables \
    procps \
    isc-dhcp-client

# add sudo user

RUN groupadd -g 1000 developer && \
    useradd -g      developer -G sudo -m -s /bin/bash test && \
    echo 'test:test' | chpasswd

RUN echo 'Defaults visiblepw' >> /etc/sudoers
RUN echo 'test ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER test
