FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
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
        iputils-tracepath \
        traceroute \
        mtr \
    && apt autoremove \
    && apt clean \
    && mkdir -p /run/sshd \
    &&  curl -sS https://starship.rs/install.sh | sh -s -- -y -f \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
