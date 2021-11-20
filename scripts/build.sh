#!/usr/bin/env bash
set -e

mkdir -p vm-image/

DOCKER_HOST=""
if [ $# -gt 0 ]; then
  DOCKER_HOST="${1}"
fi

export DOCKER_HOST
# linuxkit-defnodo -v build -format "kernel+squashfs" -dir vm-image/ linuxkit/defnodo.yml
~/dev/defnodo/output/linuxkit -v build -format "kernel+squashfs" -dir vm-image/ linuxkit/defnodo.yml
