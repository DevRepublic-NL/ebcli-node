# Docker file to run AWS EB CLI tools.
FROM alpine
MAINTAINER ServisHero

RUN apk --no-cache add \
  nodejs \
  python \
  py-pip && pip install --upgrade awsebcli
