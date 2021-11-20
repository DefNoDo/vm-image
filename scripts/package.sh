#!/usr/bin/env bash
set -e

mkdir -p output
tar -cvzf output/vm-image.tar.gz -C vm-image defnodo-cmdline defnodo-kernel defnodo-squashfs.img
