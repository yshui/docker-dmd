FROM debian:buster

MAINTAINER Yuxuan Shui

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends ssh git curl asciidoc libxml2-utils \
    ca-certificates
RUN apt-get install -y --no-install-recommends gcc clang meson ninja-build
RUN apt-get install -y --no-install-recommends xcb-proto libx11-dev \
    libx11-xcb-dev libxext-dev libxcb-damage0-dev libxcb-xfixes0-dev \
    libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev \
    libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev \
    libxcb-xinerama0-dev libxcb1-dev
RUN apt-get install -y --no-install-recommends libpixman-1-dev libdbus-1-dev \
    libconfig-dev libxdg-basedir-dev libev-dev libpcre3-dev
RUN apt-get install -y --no-install-recommends libgl1-mesa-dev \
    xvfb mesa-utils xserver-xorg-core xauth libgl1-mesa-dri
RUN apt-get install -y --no-install-recommends docbook-xml xsltproc
RUN apt-get install -y --no-install-recommends uthash-dev
RUN apt-get install -y --no-install-recommends python-pip python-setuptools
RUN pip install xcffib
