#!/bin/sh

# Symlink toolbox shims
./toolbox-shims.sh

# Update the container and install packages
dnf copr enable atim/lazygit -y
dnf copr enable atim/starship -y
dnf update -y
grep -v '^#' ./fedora.packages | xargs dnf install -y
