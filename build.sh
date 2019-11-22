#!/bin/sh

git clone https://github.com/kubos/kubos-linux-build
cd kubos-linux-build
sed -i '/BR2_KUBOS_VERSION/c\BR2_KUBOS_VERSION = "master"' configs/${KUBOS_BOARD}_defconfig
./build.sh