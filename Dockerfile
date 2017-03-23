FROM ubuntu:16.04

MAINTAINER Stefan Rohe <think@hotmail.de>

ENV \
  COMPILER=dmd \
  COMPILER_VERSION=2.073.2

RUN apt-get update && apt-get install -y curl build-essential \
 && curl -fsS -o /tmp/install.sh https://dlang.org/install.sh \
 && bash /tmp/install.sh -p /dlang install -s "${COMPILER}-${COMPILER_VERSION}" \
 && rm /tmp/install.sh \
 && apt-get install -y gcc libevent openssl \
 && rm -rf /var/cache/apt \
 && rm -rf /dlang/${COMPILER}-*/linux/bin32 \
 && rm -rf /dlang/${COMPILER}-*/linux/lib32 \
 && rm -rf /dlang/${COMPILER}-*/html \
 && rm -rf /dlang/dub-1.0.0/dub.tar.gz

ENV \
  PATH=/dlang/dub:/dlang/${COMPILER}-${COMPILER_VERSION}/linux/bin64:${PATH} \
  LD_LIBRARY_PATH=/dlang/${COMPILER}-${COMPILER_VERSION}/linux/lib64 \
  LIBRARY_PATH=/dlang/${COMPILER}-${COMPILER_VERSION}/linux/lib64 \
