# Dockerfile for inaetics/apt-cacher-service

FROM ubuntu:14.04
MAINTAINER Bram de Kruijff <bdekruijff@gmail.com> (@bdekruijff)

# Generic upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -qy

# Tooling install
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy apt-cacher apache2

ADD apt-cacher.conf /etc/apt-cacher/apt-cacher.conf
