## Automatically created docker image for ruby

[![Build Status](https://travis-ci.org/encodeering/docker-ruby.svg?branch=master)](https://travis-ci.org/encodeering/docker-ruby)

### Docker

```docker pull encodeering/ruby-armhf```

- 2.3, [2.3-onbuild]
- https://hub.docker.com/r/encodeering/ruby-armhf/

```docker pull encodeering/ruby-amd64```

- 2.3, [2.3-onbuild]
- https://hub.docker.com/r/encodeering/ruby-amd64/

### Modification

The build time for a armhf image was greater than the allowed maximum of 50 min and we had to split the official ruby build into two parts therefore.

- 2.3-onbuild includes the compile and install steps. Please look at the [patch](.patch/2.3/Dockerfile.patch) for further information.
