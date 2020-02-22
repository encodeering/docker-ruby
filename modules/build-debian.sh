#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

docker-pull "$REPOSITORY/buildpack-$ARCH:buster" "buildpack-deps:buster"

docker-build "$PROJECT/$VERSION/buster"
