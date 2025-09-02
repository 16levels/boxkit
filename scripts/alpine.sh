#!/bin/sh

# Symlink toolbox shims
./toolbox-shims.sh

# Enable testing repository
echo https://dl-cdn.alpinelinux.org/alpine/edge/testing/ >> /etc/apk/repositories

# Update the container and install packages
apk update && apk upgrade
grep -v '^#' ./alpine.packages | xargs apk add --no-cache
