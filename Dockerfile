FROM debian:latest

MAINTAINER Yuxuan Shui

RUN apt-get update && apt-get install -y curl build-essential \
 && apt-get install -y gcc clang meson ninja-build xcb-proto libx11-dev \
    libx11-xcb-dev libxext-dev libxcb-damage0-dev libxcb-xfixes0-dev \
    libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev \
    libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev \
    libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev \
    libxdg-basedir-dev libev-dev libpcre3-dev libgl1-mesa-dev libxcb1-dev \
    asciidoc xvfb mesa-utils xserver-xorg-core

