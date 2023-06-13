#!/bin/sh -e
CHIP_VERSION=1.1.0.1
for ARCH in armv7hf aarch64
do
  docker build --build-arg CHIP_VERSION=${CHIP_VERSION} --tag svefredrik/chip-tool:${CHIP_VERSION}-${ARCH} -f Dockerfile.${ARCH} .
  mkdir -p ${ARCH}
  ID=$(docker create svefredrik/chip-tool:${CHIP_VERSION}-${ARCH})
  docker cp $ID:/chip-tool ${ARCH}
  docker rm -v $ID
done
