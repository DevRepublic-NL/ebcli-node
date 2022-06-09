# Docker file to run AWS EB CLI tools.
FROM alpine:3.16.0
MAINTAINER ServisHero

RUN apk --no-cache add \
  nodejs \
  bash \
  python \
  make \
  py-pip && pip install --upgrade awsebcli
