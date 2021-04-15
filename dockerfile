FROM alpine:3.10

RUN sudo apt-get update && \
    sudo apt-get -y install \
    build-essential \
    zlib1g-dev \
    && sudo apt-get clean --yes

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]