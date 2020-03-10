#!/bin/bash

set -e

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

rm -rf build
mkdir build
cd build
#cmake -DWITH_XC_ALL=ON -DWITH_XC_NETWORKING=OFF -DWITH_XC_UPDATECHECK=OFF -DCMAKE_PREFIX_PATH=/usr/bin/cmake -DCMAKE_INSTALL_PREFIX=~/.local ..

cmake -DWITH_XC_ALL=ON -DCMAKE_PREFIX_PATH=/usr/bin/cmake -DCMAKE_INSTALL_PREFIX=~/opt/KeePassXC ..
make -j12 install
