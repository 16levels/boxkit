#!/bin/sh

# Symlink toolbox shims
./toolbox-shims.sh

# Update the container and install packages
apk update && apk upgrade
grep -v '^#' ./wolfi.packages | xargs apk add --no-cache
