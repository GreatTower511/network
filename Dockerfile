FROM ubuntu:18.04

RUN \
  apt-get update && \
  apt-get -y install \
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
