#!/bin/bash
# SPDX-FileCopyrightText: toolbox-images contributors
#
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

distro="${1:?distribution required}"
release="${2:?release required}"
image="${distro}-toolbox:${release}"

echo
echo "Smoke test: ${image}"

case "${distro}" in
    alpine|wolfi)
        package_manager=apk
        ;;
    almalinux|centos|rockylinux)
        package_manager=dnf
        ;;
    amazonlinux)
        if [ "${release}" = "2" ]; then
            package_manager=yum
        else
            package_manager=dnf
        fi
        ;;
    debian)
        package_manager=apt-get
        ;;
    opensuse)
        package_manager=zypper
        ;;
    *)
        echo "Unsupported distribution: ${distro}" >&2
        exit 1
        ;;
esac

echo "Package manager: ${package_manager}"

container="$(podman create "${image}" /bin/true)"
trap 'podman rm --force "${container}" >/dev/null 2>&1 || true' EXIT

echo "Checking Toolbx label"
label="$(podman inspect --format '{{index .Config.Labels "com.github.containers.toolbox"}}' "${container}")"
if [ "${label}" != "true" ]; then
    echo "Missing Toolbx label on ${image}" >&2
    exit 1
fi
echo "Toolbx label: present"

echo "Checking required files and commands"
podman run --rm --env "PACKAGE_MANAGER=${package_manager}" "${image}" sh -c '
    set -eu
    test -f /etc/os-release
    test -f /etc/passwd
    for command in passwd sudo "${PACKAGE_MANAGER}"; do
        if ! command -v "${command}" >/dev/null; then
            echo "Missing command: ${command}" >&2
            exit 1
        fi
    done
'
echo "Smoke test passed"
echo
