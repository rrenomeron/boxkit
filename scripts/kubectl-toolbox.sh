#!/bin/sh

# Options
KUBERNETES_VERSION=1.30

# Symlink distrobox shims
./distrobox-shims.sh

# Add packages
apk add kubectl-$KUBERNETES_VERSION
apk add helm

