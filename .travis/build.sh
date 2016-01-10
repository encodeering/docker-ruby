#!/bin/bash

set -ev

TAG="$REPOSITORY/$PROJECT-$ARCH"
TAGSPECIFIER="$VERSION"

docker pull   "$REPOSITORY/buildpack-$ARCH:jessie"
docker tag -f "$REPOSITORY/buildpack-$ARCH:jessie" "buildpack-deps:jessie"

docker build -t "$TAG:$TAGSPECIFIER" "$PROJECT/$VERSION"
