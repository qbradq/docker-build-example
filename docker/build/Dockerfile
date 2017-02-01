FROM         debian:jessie-slim
MAINTAINER   Norman B. Lancaster <qbradq@gmail.com>
CMD          bash

# Required system packages
RUN apt-get update && apt-get -y install \
  apt-utils \
  build-essential \
  curl \
  doxygen \
  git \
  tar \
  wget \
  xz-utils

# Install latest CMake
RUN wget -q -O /tmp/cmake.tar.gz --no-check-certificate \
  https://cmake.org/files/v3.7/cmake-3.7.2-Linux-x86_64.tar.gz && \
  tar -xaf /tmp/cmake.tar.gz --strip-components=1 -C /usr/local && \
  rm /tmp/cmake.tar.gz

# Install latest Clang
RUN wget -q -O /tmp/clang.tar.xz --no-check-certificate \
  http://releases.llvm.org/3.9.1/clang+llvm-3.9.1-x86_64-linux-gnu-debian8.tar.xz && \
  tar -xaf /tmp/clang.tar.xz --strip-components=1 -C /usr/local && \
  rm /tmp/clang.tar.xz

