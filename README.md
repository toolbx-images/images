# Container images for toolbx (and distrobox)

Community maintained container images to use with [toolbx] ([GitHub]). See
[containers/toolbox#1019] for the upstream discussion on the next steps to make
those images more "official".

You can also use them wih distrobox. See the discussion in
[distrobox#544](https://github.com/89luca89/distrobox/issues/544).

## Available distributions and usage

You can find all images in the [toolbx-images organization] on [Quay.io], or
directly use the commands below:

- [Fedora]: Slightly smaller alternative to the official Fedora images:
  ```
  $ toolbox create --image quay.io/toolbx-images/fedora-toolbox:40
  $ toolbox enter fedora-toolbox-40

  $ toolbox create --image quay.io/toolbx-images/fedora-toolbox:39
  $ toolbox enter fedora-toolbox-39

  $ toolbox create --image quay.io/toolbx-images/fedora-toolbox:38
  $ toolbox enter fedora-toolbox-38
  ```

- [AlmaLinux] with [EPEL] enabled by default:
  ```
  $ toolbox create --image quay.io/toolbx-images/almalinux-toolbox:9
  $ toolbox enter almalinux-toolbox-9

  $ toolbox create --image quay.io/toolbx-images/almalinux-toolbox:8
  $ toolbox enter almalinux-toolbox-8
  ```

- [Alpine Linux]:
  ```
  $ toolbox create --image quay.io/toolbx-images/alpine-toolbox:3.19
  $ toolbox enter alpine-toolbox-3.19

  $ toolbox create --image quay.io/toolbx-images/alpine-toolbox:3.18
  $ toolbox enter alpine-toolbox-3.18

  $ toolbox create --image quay.io/toolbx-images/alpine-toolbox:3.17
  $ toolbox enter alpine-toolbox-3.17

  $ toolbox create --image quay.io/toolbx-images/alpine-toolbox:3.16
  $ toolbox enter alpine-toolbox-3.16

  $ toolbox create --image quay.io/toolbx-images/alpine-toolbox:edge
  $ toolbox enter alpine-toolbox-edge
  ```

- [Amazon Linux] Note: Only Amazon Linux 2 comes with [EPEL] enabled by default:
  ```
  $ toolbox create --image quay.io/toolbx-images/amazonlinux-toolbox:2023
  $ toolbox enter amazonlinux-toolbox-2023

  $ toolbox create --image quay.io/toolbx-images/amazonlinux-toolbox:2
  $ toolbox enter amazonlinux-toolbox-2
  ```

- [Arch Linux]:
  ```
  $ toolbox create --image quay.io/toolbx-images/archlinux-toolbox:latest
  $ toolbox enter archlinux-toolbox-latest
  ```

- [CentOS (Stream)] with [EPEL] enabled by default:
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

  $ toolbox create --image quay.io/toolbx-images/debian-toolbox:12
  $ toolbox enter debian-toolbox-12

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

- [Red Hat Enterprise Linux (Universal Base Image)] with [EPEL] enabled by
  default. Note: You are free to use and redistribute UBI images, provided you
  adhere to the [Red Hat Universal Base Image End User Licensing Agreement].
  ```
  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:9.2
  $ toolbox enter rhel-toolbox-9.2

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:9.1
  $ toolbox enter rhel-toolbox-9.1

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:9.0
  $ toolbox enter rhel-toolbox-9.0

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:8.8
  $ toolbox enter rhel-toolbox-8.8

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:8.7
  $ toolbox enter rhel-toolbox-8.7

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:8.6
  $ toolbox enter rhel-toolbox-8.6

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:8.4
  $ toolbox enter rhel-toolbox-8.4

  $ toolbox create --image quay.io/toolbx-images/rhel-toolbox:8.2
  $ toolbox enter rhel-toolbox-8.2
  ```

- [Rocky Linux] with [EPEL] enabled by default:
  ```
  $ toolbox create --image quay.io/toolbx-images/rockylinux-toolbox:9
  $ toolbox enter rockylinux-toolbox-9

  $ toolbox create --image quay.io/toolbx-images/rockylinux-toolbox:8
  $ toolbox enter rockylinux-toolbox-8
  ```

- [Ubuntu]:
  ```
  $ toolbox create --image quay.io/toolbx-images/ubuntu-toolbox:23.10
  $ toolbox enter ubuntu-toolbox-23.10

  $ toolbox create --image quay.io/toolbx-images/ubuntu-toolbox:23.04
  $ toolbox enter ubuntu-toolbox-23.04

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
[Fedora]: https://quay.io/repository/fedora/fedora-toolbox
[toolbox#1389]: https://github.com/containers/toolbox/issues/1389
[AlmaLinux]: https://hub.docker.com/_/almalinux
[Alpine Linux]: https://hub.docker.com/_/alpine
[Amazon Linux]: https://gallery.ecr.aws/amazonlinux/amazonlinux
[Arch Linux]: https://hub.docker.com/_/archlinux/
[CentOS (Stream)]: https://www.centos.org/centos-stream/
[EPEL]: https://docs.fedoraproject.org/en-US/epel/
[Debian]: https://hub.docker.com/_/debian
[Red Hat Enterprise Linux (Universal Base Image)]: https://developers.redhat.com/products/rhel/ubi
[Red Hat Universal Base Image End User Licensing Agreement]: https://www.redhat.com/licenses/EULA_Red_Hat_Universal_Base_Image_English_20190422.pdf
[Rocky Linux]: https://hub.docker.com/_/rockylinux
[Ubuntu]: https://hub.docker.com/_/ubuntu
[openSUSE]: https://registry.opensuse.org/cgi-bin/cooverview?srch_term=project%3D%5EopenSUSE%3AContainers%3A+container%3Dtoolbox
