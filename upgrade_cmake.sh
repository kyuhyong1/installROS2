#!/bin/bash
wget https://cmake.org/files/v3.17/cmake-3.17.3.tar.gz
tar xvzf cmake-3.17.3.tar.gz
cd cmake-3.17.3
./bootstrap
make
sudo make install