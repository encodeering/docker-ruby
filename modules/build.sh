#!/usr/bin/env bash
# configuration
#   env.ARCH
#   env.PROJECT
#   env.VERSION
#   env.VARIANT
#   env.REPOSITORY

set -e

import com.encodeering.docker.config
import com.encodeering.docker.docker

docker-pull "$REPOSITORY/buildpack-$ARCH:jessie" "buildpack-deps:jessie"

docker build -t "$DOCKER_IMAGE" "$PROJECT/$VERSION/jessie"

docker run --rm "$DOCKER_IMAGE" ruby --version
