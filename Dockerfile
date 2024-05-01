FROM ubuntu:24.04

ARG NEXTMV_API_KEY
ARG NEXTMV_BASE_URL

ENV NEXTMV_BASE_URL=https://api.cloud.nextmv.io
ENV NEXTMV_API_KEY=${NEXTMV_API_KEY}

RUN apt-get update
RUN apt-get install -y curl

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]