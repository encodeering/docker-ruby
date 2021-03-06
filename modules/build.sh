#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

./build-${BASE}.sh

docker-verify ruby --version | dup | contains "ruby ${VERSION}"
