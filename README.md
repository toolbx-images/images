# Container images for toolbx

Community maintained container images to use with [toolbx] ([GitHub]). See
[containers/toolbox#1019] for the upstream discussion on the next steps to make
those images more "official".

## Available distributions and usage

You can find all images in the [toolbx-images organization] on [Quay.io], or
directly use the commands below:

- Fedora: See the official images (default in toolbx)

- [Arch Linux]:
  ```
  $ toolbox create --image quay.io/toolbx-images/archlinux-toolbox:latest
  $ toolbox enter archlinux-toolbox-latest
  ```

- [CentOS (Stream)]:
  ```
  $ toolbox create --image quay.io/toolbx-images/centos-toolbox:stream9
  $ toolbox enter centos-toolbox-stream9

  $ toolbox create --image quay.io/toolbx-images/centos-toolbox:stream8
  $ toolbox enter centos-toolbox-stream8
  ```

- [Debian]:
  ```
  $ toolbox create --image quay.io/toolbx-images/debian-toolbox:unstable
  $ toolbox enter debian-toolbox-unstable

  $ toolbox create --image quay.io/toolbx-images/debian-toolbox:testing
  $ toolbox enter debian-toolbox-testing

  $ toolbox create --image quay.io/toolbx-images/debian-toolbox:11
  $ toolbox enter debian-toolbox-11

  $ toolbox create --image quay.io/toolbx-images/debian-toolbox:10
  $ toolbox enter debian-toolbox-10
  ```

- [openSUSE]:
  ```
  $ toolbox create --image quay.io/toolbx-images/opensuse-toolbox:tumbleweed
  $ toolbox enter opensuse-toolbox-tumbleweed
  ```

- [Red Hat Enterprise Linux (Universal Base Image)]. Note: You are free to use
  and redistribute UBI images, provided you adhere to the [Red Hat Universal
  Base Image End User Licensing Agreement][UBI].
  ```
  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:9.0
  $ toolbox enter rhel-toolbox-9.0

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:8.6
  $ toolbox enter rhel-toolbox-8.6

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:8.4
  $ toolbox enter rhel-toolbox-8.4

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:8.2
  $ toolbox enter rhel-toolbox-8.2
  ```

- [Ubuntu]:
  ```
  $ toolbox create --image quay.io/toolbx-images/ubuntu-toolbox:22.04
  $ toolbox enter ubuntu-toolbox-22.04

  $ toolbox create --image quay.io/toolbx-images/ubuntu-toolbox:20.04
  $ toolbox enter ubuntu-toolbox-20.04

  $ toolbox create --image quay.io/toolbx-images/ubuntu-toolbox:18.04
  $ toolbox enter ubuntu-toolbox-18.04

  $ toolbox create --image quay.io/toolbx-images/ubuntu-toolbox:16.04
  $ toolbox enter ubuntu-toolbox-16.04
  ```

[toolbx]: https://containertoolbx.org
[GitHub]: https://github.com/containers/toolbox
[containers/toolbox#1019]: https://github.com/containers/toolbox/issues/1019
[toolbx-images organization]: https://quay.io/organization/toolbx-images
[Quay.io]: https://quay.io/
[Arch Linux]: https://hub.docker.com/_/archlinux/
[CentOS (Stream)]: https://www.centos.org/centos-stream/
[Debian]: https://hub.docker.com/_/debian
[Red Hat Enterprise Linux (Universal Base Image)]: https://developers.redhat.com/products/rhel/ubi
[UBI]: https://www.redhat.com/licenses/EULA_Red_Hat_Universal_Base_Image_English_20190422.pdf
[Ubuntu]: https://hub.docker.com/_/ubuntu
[openSUSE]: https://registry.opensuse.org/cgi-bin/cooverview?srch_term=project%3D%5EopenSUSE%3AContainers%3A+container%3Dtoolbox
