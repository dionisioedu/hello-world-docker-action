FROM alpine:3.10

RUN apt-get update && \
    apt-get -y install \
    build-essential \
    zlib1g-dev \
    && apt-get clean --yes




FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils build-essential sudo git zlib1g-dev
# RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
# USER docker

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]