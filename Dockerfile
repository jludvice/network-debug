FROM ubuntu:22.04

RUN --mount=type=cache,target=/var/cache/apt \
    apt-get update \
    && apt-get install -y curl dnsutils vim netcat

RUN curl https://dl.min.io/client/mc/release/linux-amd64/mc \
    -o /usr/local/bin/mc \
    && chmod +x /usr/local/bin/mc