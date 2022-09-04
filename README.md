# Container images for toolbx

Container images to use with [toolbx] ([GitHub]).

## Available distributions and usage

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
  ```

- [Ubuntu]:
  ```
  $ toolbox create --image quay.io/toolbx-images/ubuntu-toolbox:22.04
  $ toolbox enter ubuntu-toolbox-22.04
  ```

## Hacking on images

As we have limited free GitHub Actions minutes, we do not trigger builds on
PRs, only on merged commits. Please test you image builds locally before
submitting a PR.

[toolbx]: https://containertoolbx.org
[GitHub]: https://github.com/containers/toolbox
[Arch Linux]: https://hub.docker.com/_/archlinux/
[CentOS (Stream)]: https://www.centos.org/centos-stream/
[Ubuntu]: https://hub.docker.com/_/ubuntu
