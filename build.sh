#!/bin/sh -e
CHIP_VERSION=1.1.0.1
docker build --build-arg CHIP_VERSION=${CHIP_VERSION} --tag svefredrik/chip-tool:${CHIP_VERSION}-armv7hf -f Dockerfile.armv7hf .
docker build --build-arg CHIP_VERSION=${CHIP_VERSION} --tag svefredrik/chip-tool:${CHIP_VERSION}-aarch64 -f Dockerfile.aarch64 .
