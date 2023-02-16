FROM docker.io/library/debian:unstable

LABEL com.github.containers.toolbox="true" \
      name="debian-toolbox" \
      version="unstable" \
      usage="This image is meant to be used with the toolbox command" \
      summary="Base image for creating Debian toolbox containers" \
      maintainer=""

# Remove apt configuration optimized for containers
# Remove docker-gzip-indexes to help with "command-not-found"
RUN rm /etc/apt/apt.conf.d/docker-gzip-indexes /etc/apt/apt.conf.d/docker-no-languages

# Enable myhostname nss plugin for clean hostname resolution without patching
# hosts (at least for sudo), add it right after 'files' entry. We expect that
# this entry is not present yet. Do this early so that package postinst (which
# adds it too late in the order) skips this step
RUN sed -Ei 's/^(hosts:.*)(\<files\>)\s*(.*)/\1\2 myhostname \3/' /etc/nsswitch.conf

# Prevent questions when installing packages
ARG DEBIAN_FRONTEND=noninteractive

# Make flatpak-xdg-utils usable inside the toolbox
COPY toolbox-flatpak-xdg-utils.sh /etc/profile.d

# Install extra packages as well as libnss-myhostname
COPY extra-packages /
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
        libnss-myhostname \
        $(cat extra-packages | xargs) && \
    rm -rd /var/lib/apt/lists/*
RUN rm /extra-packages

# Enable password less sudo
RUN sed -i -e 's/ ALL$/ NOPASSWD:ALL/' /etc/sudoers

RUN echo VARIANT_ID=container >> /etc/os-release
# ?
RUN touch /etc/localtime
