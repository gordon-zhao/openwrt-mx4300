#!/bin/bash
./scripts/feeds update
./scripts/feeds install -a
cp nss-setup/config-nss.seed .config
make defconfig
make -j$(($(nproc)+1))