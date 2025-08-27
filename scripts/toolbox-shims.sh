#!/bin/sh

curl "https://github.com/1player/host-spawn/releases/latest/download/host-spawn-$(uname -m)" -fsLSo /usr/local/bin/host-spawn
chmod +x /usr/local/bin/host-spawn

[ ! -e /usr/bin/sh ] && ln -fs /bin/sh /usr/bin/sh
ln -fs /usr/local/bin/host-spawn /usr/local/bin/docker
ln -fs /usr/local/bin/host-spawn /usr/local/bin/flatpak
ln -fs /usr/local/bin/host-spawn /usr/local/bin/podman
ln -fs /usr/local/bin/host-spawn /usr/local/bin/rpm-ostree
ln -fs /usr/local/bin/host-spawn /usr/local/bin/transactional-update
