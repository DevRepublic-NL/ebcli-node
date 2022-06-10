# Docker file to run AWS EB CLI tools.
FROM alpine:3.16.0
LABEL maintainer=ravidevrepublic

RUN apk --no-cache add \ 
  nodejs \
  npm \
  bash \
  python3 \
  python3-dev \
  build-base \
  libffi-dev \
  make \
  py3-pip
RUN pip install wheel
RUN pip install --ignore-installed six awsebcli --upgrade
