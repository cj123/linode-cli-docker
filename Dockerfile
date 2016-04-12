FROM ubuntu:latest

MAINTAINER Callum Jones <cj@icj.me>

RUN apt-get update && apt-get install -y wget

RUN echo "deb http://apt.linode.com/ stable main" > /etc/apt/sources.list.d/linode.list

RUN wget -O- https://apt.linode.com/linode.gpg | sudo apt-key add -

RUN apt-get update && apt-get install -y linode-cli

VOLUME ["/root/.linodecli"]

ENTRYPOINT ["/usr/bin/linode"]
