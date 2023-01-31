# shellcheck shell=sh disable=SC2153
# Add flatpak-xdg-utils to PATH to allow running nested toolbox
# containers (i.e. uses flatpak-spawn).
# This also makes the xdg-utils replacements available as part of
# flatpak-xdg-utils (e.g. xdg-open) usable inside toolbox (requires
# xdg-desktop-portal on the host side).

if [ -f /run/.containerenv ] && [ -f /run/.toolboxenv ]
then
   PATH="/usr/libexec/flatpak-xdg-utils:$PATH"
   export PATH
fi
