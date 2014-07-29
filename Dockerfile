# Dockerfile for inaetics/apt-cacher-service

FROM ubuntu:14.10
MAINTAINER Jan Willem Janssen <janwillem.janssen@luminis.eu>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -q && apt-get upgrade -qy && apt-get install -qy --no-install-recommends ca-certificates apt-cacher-ng

EXPOSE 3142

ADD acng.conf /etc/apt-cacher-ng/acng.conf
CMD /etc/init.d/apt-cacher-ng start ; tail -f /var/log/apt-cacher-ng/*

