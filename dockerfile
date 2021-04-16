FROM alpine:3.10

RUN apt-get update && \
    apt-get -y install \
    build-essential \
    zlib1g-dev \
    && apt-get clean --yes

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]