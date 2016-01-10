#!/bin/bash

set -ev

TAG="$REPOSITORY/$PROJECT-$ARCH"
TAGSPECIFIER="$VERSION"

docker login -e "$DOCKER_EMAIL" -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"

if [ "$ONBUILD" = true ]; then
    docker push "$TAG:$TAGSPECIFIER-onbuild"
else
    docker push "$TAG:$TAGSPECIFIER"
fi
