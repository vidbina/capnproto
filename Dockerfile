FROM debian:jessie
RUN \
  apt-get update && apt-get install -y \
  autoconf automake libtool curl g++ git make unzip \
  && rm -rf /var/lib/apt/lists/*
COPY . /tmp/capnproto
RUN cd /tmp/capnproto && \
      ./super-test.sh
WORKDIR /tmp/capnproto
