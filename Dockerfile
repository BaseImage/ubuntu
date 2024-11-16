FROM ubuntu:24.04

RUN apt update -qq \
    && apt install -qq --no-install-recommends -y \
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
        mysql-client \
        postgresql-client \
        redis-tools \
        iproute2 \
        socat \
        bash-completion \
        make \
        build-essential \
        openssh-server \
    && apt autoremove \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

