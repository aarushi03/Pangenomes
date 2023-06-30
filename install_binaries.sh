#!/usr/bin/env bash
# Mike Cuoco, mcuoco@ucsd.edu
# 6/29/23, 2:38 PM

# exit if any non-zero, exit if undefined var
set -euo pipefail

mkdir -p bin && cd bin

# Download and install gfabase
if [ ! -f gfabase ]; then
    url="https://github.com/mlin/gfabase/releases/download/v0.6.0/gfabase-linux-x86-64"
    echo "Downloading gfabase from $url"
    wget $url
    chmod +x gfabase-linux-x86-64
    mv gfabase-linux-x86-64 gfabase
fi 

# Download and install agc
if [ ! -f agc ]; then
    url="https://github.com/refresh-bio/agc/releases/download/v1.1/agc-1.1_x64-linux.tar.gz"
    echo "Downloading agc from $url"
    curl -L $url | tar -zxvf - agc-1.1_x64-linux/agc
    mv agc-1.1_x64-linux/agc agc
    rm -rf agc-1.1_x64-linux
    chmod +x agc
fi
