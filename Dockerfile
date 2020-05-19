FROM ubuntu:18.04

RUN apt update \
    && apt install -y \
       curl \
       wget \
       net-tools \
       telnet \
       make \
       python3 \
       python3-pip \
       unzip \
    && apt autoremove

