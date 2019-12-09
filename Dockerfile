FROM circleci/node:lts
MAINTAINER Cosmin Petrescu <cosmin.petrescu@innobyte.com>

RUN sudo apt-get update
RUN sudo apt-get install bash python3 python3-dev python3-pip unzip build-essential ca-certificates wget
RUN sudo pip3 install --upgrade pip
RUN sudo pip3 install awscli
RUN sudo wget -O /kubectl https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl && sudo chmod +x /kubectl
