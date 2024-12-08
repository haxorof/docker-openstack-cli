# OpenStackClient

**THIS REPOSITORY IS NO LONGER MAINTAINED!**

[![Docker Pulls](https://img.shields.io/docker/pulls/haxorof/openstack-cli)](https://hub.docker.com/r/haxorof/openstack-cli/)
[![CI](https://github.com/haxorof/docker-openstack-cli/workflows/CI/badge.svg)](https://github.com/haxorof/docker-openstack-cli/actions?query=workflow%3ACI)

> "OpenStackClient (aka OSC) is a command-line client for OpenStack that brings the command set for Compute, Identity, Image, Object Storage and Block Storage APIs together in a single shell with a uniform command structure." [docs.openstack.org](https://docs.openstack.org/python-openstackclient/latest/)

In addition to the standard OpenStack client the following clients are also available:

- Designate
- Heat

## How to use this image

Simplest way of using this image is to just run with the arguments you want. Example below will show the help of `openstack` command:

```console
docker run -it --rm haxorof/openstack-cli help
```

To use OpenStack configuration file that is located on the host system you mount it into the container. Example below list all servers
using the `test` cloud configuration defined in `${HOME}/.config/openstack/clouds.yaml`:

```console
docker run -it --rm -v ${HOME}/.config/openstack:/etc/openstack haxorof/openstack-cli --os-cloud test server list
```

## Bash aliases

To make it easier to use this container you could setup bash aliases by creating `~/.bash_aliases` with the following contents:

```bash
alias openstack='docker run -it --rm -v ${HOME}/.config/openstack:/etc/openstack haxorof/openstack-cli'
```
