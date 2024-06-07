# Container images for toolbx (and distrobox)

Community maintained container images to use with [toolbx] ([GitHub]). See
[containers/toolbox#1019] for the upstream discussion on the next steps to make
those images more "official".

You can also use them wih distrobox. See the discussion in
[distrobox#544](https://github.com/89luca89/distrobox/issues/544).

## Available distributions and usage

You can find all images in the [toolbx-images organization] on [Quay.io], or
directly use the commands below:

- [Fedora]: The images are now maintained as part of [Toolbx] ([GitHub]) (repo
  on `registry.fedoraproject.org`). Usage:
  ```
  $ toolbox create --distro fedora --release 40
  $ toolbox enter fedora-toolbox-40

  $ toolbox create --distro fedora --release 39
  $ toolbox enter fedora-toolbox-39

  $ toolbox create --distro fedora --release 38
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

- [Arch Linux]: The images are now maintained as part of [Toolbx] ([GitHub])
  ([repo on Quay.io](https://quay.io/repository/toolbx/arch-toolbox)). Usage:
  ```
  $ toolbox create --distro arch
  $ toolbox enter arch-toolbox-latest
  ```

  Or, alternatively:
  ```
  $ toolbox create --image quay.io/toolbx/arch-toolbox:latest
  $ toolbox enter arch-toolbox-latest
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

- [Red Hat Enterprise Linux (Universal Base Image)]: The images are now
  maintained by Red Hat and their sources are part of [Toolbx] ([GitHub]) (repo
  on `registry.access.redhat.com` for RHEL [8](https://catalog.redhat.com/software/containers/ubi8/toolbox/611bd665bd674341b5c5ed46)
  and [9](https://catalog.redhat.com/software/containers/ubi9/toolbox/61532d7dd2c7f84a4d2ed86b)).
  Usage:
  ```
  $ toolbox create --distro rhel --release 9.3
  $ toolbox enter rhel-toolbox-9.3

  $ toolbox create --distro rhel --release 8.9
  $ toolbox enter rhel-toolbox-8.9
  ```

- [Rocky Linux] with [EPEL] enabled by default:
  ```
  $ toolbox create --image quay.io/toolbx-images/rockylinux-toolbox:9
  $ toolbox enter rockylinux-toolbox-9

  $ toolbox create --image quay.io/toolbx-images/rockylinux-toolbox:8
  $ toolbox enter rockylinux-toolbox-8
  ```

- [Ubuntu]: The images are now maintained as part of [Toolbx] ([GitHub]) ([repo
  on Quay.io](https://quay.io/repository/toolbx/ubuntu-toolbox)). Usage:
  ```
  $ toolbox create --distro ubuntu --release 23.10
  $ toolbox enter ubuntu-toolbox-23.10

  $ toolbox create --distro ubuntu --release 23.04
  $ toolbox enter ubuntu-toolbox-23.04

  $ toolbox create --distro ubuntu --release 22.04
  $ toolbox enter ubuntu-toolbox-22.04

  $ toolbox create --distro ubuntu --release 20.04
  $ toolbox enter ubuntu-toolbox-20.04

  $ toolbox create --distro ubuntu --release 18.04
  $ toolbox enter ubuntu-toolbox-18.04

  $ toolbox create --distro ubuntu --release 16.04
  $ toolbox enter ubuntu-toolbox-16.04
  ```

  Or, alternatively:
  ```
  $ toolbox create --image quay.io/toolbx/ubuntu-toolbox:23.10
  $ toolbox enter ubuntu-toolbox-23.10

  $ toolbox create --image quay.io/toolbx/ubuntu-toolbox:23.04
  $ toolbox enter ubuntu-toolbox-23.04

  $ toolbox create --image quay.io/toolbx/ubuntu-toolbox:22.04
  $ toolbox enter ubuntu-toolbox-22.04

  $ toolbox create --image quay.io/toolbx/ubuntu-toolbox:20.04
  $ toolbox enter ubuntu-toolbox-20.04

  $ toolbox create --image quay.io/toolbx/ubuntu-toolbox:18.04
  $ toolbox enter ubuntu-toolbox-18.04

  $ toolbox create --image quay.io/toolbx/ubuntu-toolbox:16.04
  $ toolbox enter ubuntu-toolbox-16.04
  ```

- [Wolfi]:
  ```
  $ toolbox create --image quay.io/toolbx-images/wolfi-toolbox:latest
  $ toolbox enter wolfi-toolbox-latest
  ```

## Verifying sigstore container signatures with podman

How to configure sigstore signature verification in podman:

```
$ sudo mkdir /etc/pki/containers
$ curl -O "https://raw.githubusercontent.com/toolbx-images/images/main/quay.io-toolbx-images.pub"
$ sudo cp quay.io-toolbx-images.pub /etc/pki/containers/
$ sudo restorecon -RFv /etc/pki/containers

$ cat /etc/containers/registries.d/quay.io-toolbx-images.yaml
docker:
  quay.io/toolbx-images:
    use-sigstore-attachments: true
$ sudo restorecon -RFv /etc/containers/registries.d/quay.io-toolbx-images.yaml

$ cat /etc/containers/policy.json
{
    "default": [
        {
            "type": "reject"
        }
    ],
    "transports": {
        "docker": {
            ...
            "quay.io/toolbx-images": [
                {
                    "type": "sigstoreSigned",
                    "keyPath": "/etc/pki/containers/quay.io-toolbx-images.pub",
                    "signedIdentity": {
                        "type": "matchRepository"
                    }
                }
            ],
            ...
            "": [
                {
                    "type": "insecureAcceptAnything"
                }
            ]
        },
        ...
    }
}
...
```

## License

See [COPYING](COPYING).

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
[Wolfi]: cgr.dev/chainguard/
