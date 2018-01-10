#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

case "$VERSION" in
    2.3) FROM=jessie;   TO=jessie  ;;
    2.5) FROM=stretch ; TO=stretch ;;
esac

docker-pull "$REPOSITORY/buildpack-$ARCH:$FROM" "buildpack-deps:$TO"

docker-build "$PROJECT/$VERSION/$FROM"
