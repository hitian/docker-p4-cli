FROM ubuntu:latest

RUN apt-get update -y && \
    apt upgrade -y && \
    apt install wget nano -y && \
	wget -O p4.tgz http://www.perforce.com/downloads/perforce/r20.1/bin.linux26x86_64/helix-core-server.tgz && \
    tar -C /usr/local/bin/ -zxvf p4.tgz
ENV P4EDITOR nano