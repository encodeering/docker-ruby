#!/usr/bin/env bash

set -e

import com.encodeering.docker.config
import com.encodeering.docker.docker

case "$VERSION" in
    2.3) FROM=jessie;   TO=jessie  ;;
    2.5) FROM=stretch ; TO=stretch ;;
esac

docker-pull "$REPOSITORY/buildpack-$ARCH:$FROM" "buildpack-deps:$TO"

docker build -t "$DOCKER_IMAGE" "$PROJECT/$VERSION/$FROM"
