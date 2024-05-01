FROM ubuntu:24.04

ENV NEXTMV_BASE_URL=https://api.cloud.nextmv.io

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sS "https://cloud.nextmv.io/install-cli.txt" | bash -

COPY entrypoint.sh /
