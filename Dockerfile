FROM ubuntu:24.04

RUN apt update \
    && apt install -y \
        curl \
        wget \
        net-tools \
        tcpdump \
        multitail \
        git \
        vim \
        htop \
        tmux \
        rsync \
        jq \
        telnet \
        make \
        python3 \
        python3-pip \
        unzip \
        build-essential \
        nmap \ 
        netcat-traditional \
        iputils-ping \
        dnsutils \
    && apt autoremove

