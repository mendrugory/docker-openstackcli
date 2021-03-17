FROM alpine:latest

ENV OS_USER_DOMAIN_NAME=Default
ENV OS_PROJECT_DOMAIN_NAME=Default
ENV OS_IDENTITY_API_VERSION=3

RUN apk add --update \
  jq \
  python3-dev \
  py3-pip \
  py3-setuptools \
  ca-certificates \
  gcc \
  libffi-dev \
  openssl-dev \
  musl-dev \
  py3-cryptography \
  libressl-dev \
  linux-headers \
  && pip install --upgrade --no-cache-dir pip setuptools python-openstackclient \
  && apk del gcc musl-dev linux-headers libffi-dev \
  && rm -rf /var/cache/apk/*
