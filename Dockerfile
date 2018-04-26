FROM debian:8
MAINTAINER m0e-lnx < m0e.lnx at. gmail-dot-com >

RUN apt update && \
  apt install -y build-essential file wget git rsync m4 bash vim bison gawk libc6-i386 

RUN \
  cd /root && \
  git clone https://github.com/NetBSD/pkgsrc.git

ENV \
  SH=/bin/bash \
  SHELL=/bin/bash \
  PATH=/opt/bootstrap/bin:/opt/bootstrap/sbin:$PATH

RUN \
  cd /root/pkgsrc/bootstrap && ./bootstrap --prefix=/opt/bootstrap --make-jobs=8

WORKDIR /root/pkgsrc

COPY mk.conf /opt/bootstrap/etc/
ENTRYPOINT /bin/bash

