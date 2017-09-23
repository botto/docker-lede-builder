#!/bin/bash
cd /opt/lede
cp /opt/config/config .config
./scripts/feeds update -a
./scripts/feeds install -a
make defconfig
make -j1
cp -r bin/targets /opt/targets
