#!/bin/bash

set -xeuo pipefail

dnf -y --enablerepo copr:copr.fedorainfracloud.org:ublue-os:packages install \
  libvirt \
  libvirt-daemon-kvm \
  libvirt-nss \
  virt-install \
  podman-compose \
  ublue-os-libvirt-workarounds

dnf -y --setopt=install_weak_deps=False install \
  cockpit-bridge \
  cockpit-machines \
  cockpit-networkmanager \
  cockpit-ostree \
  cockpit-podman \
  cockpit-selinux \
  cockpit-storaged \
  cockpit-system
