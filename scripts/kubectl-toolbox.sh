#!/bin/sh

# Options
KUBERNETES_VERSION=1.30

# Symlink distrobox shims
./distrobox-shims.sh

# Add packages
apk add kubectl-$KUBERNETES_VERSION
apk add helm
apk add py3-pip
ln -s /usr/bin/kubectl-$KUBERNETES_VERSION /usr/bin/kubectl
pip install mkdocs mkdocs-material

