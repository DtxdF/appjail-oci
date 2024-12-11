#!/bin/sh

OCI_VER="${OCI_VER:-14.2-RELEASE}"
OCI_ARCH="${OCI_ARCH:-amd64}"
OCI_FLAVOUR="${OCI_FLAVOUR:-minimal}"
OCI_IMAGE="FreeBSD-${OCI_VER}-${OCI_ARCH}-container-image-${OCI_FLAVOUR}.txz"

set -xe
set -o pipefail

fetch "https://download.freebsd.org/releases/OCI-IMAGES/${OCI_VER}/${OCI_ARCH}/Latest/${OCI_IMAGE}"

buildah pull "oci-archive:${OCI_IMAGE}"

buildah bud -t "freebsd14:${OCI_VER}-${OCI_ARCH}"
