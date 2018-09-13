#!/bin/bash

mkdir -p data
mkdir -p links
mkdir -p zip

sudo apt update
sudo apt upgrade

sudo apt install zip unzip

sudo apt-get install git cmake build-essential libgcrypt11-dev libyajl-dev \
    libboost-all-dev libcurl4-openssl-dev libexpat1-dev libcppunit-dev binutils-dev \
    debhelper zlib1g-dev dpkg-dev pkg-config

git clone https://github.com/vitalif/grive2.git

cd grive2
mkdir build
cd build
cmake ..
make -j4
sudo make install

grive -a zip
