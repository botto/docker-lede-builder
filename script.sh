#!/bin/bash
cp /config/.config .config
./scripts/feeds update -a
./scripts/feeds install -a
make defconfig
make
