#!/bin/bash

set -ev

TAG="$REPOSITORY/$PROJECT-$ARCH"
TAGSPECIFIER="$VERSION"

if [ "$ONBUILD" = true ]; then
    docker pull   "$REPOSITORY/buildpack-$ARCH:jessie"
    docker tag -f "$REPOSITORY/buildpack-$ARCH:jessie" "buildpack-deps:jessie"

    docker build -t "$TAG:$TAGSPECIFIER-onbuild" "$PROJECT/$VERSION"
else
    echo       "FROM $TAG:$TAGSPECIFIER-onbuild" > Dockerfile.onbuild
    docker pull     "$TAG:$TAGSPECIFIER-onbuild"
    docker build -t "$TAG:$TAGSPECIFIER" -f Dockerfile.onbuild .
fi
