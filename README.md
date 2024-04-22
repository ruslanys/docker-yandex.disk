# Yandex.Disk Docker image

[![Docker Automated build](https://img.shields.io/docker/automated/ruslanys/yandex.disk.svg?style=flat-square&colorB=007EC6)](https://hub.docker.com/r/ruslanys/yandex.disk/) [![Docker Pulls](https://img.shields.io/docker/pulls/ruslanys/yandex.disk.svg?style=flat-square&colorB=007EC6)](https://hub.docker.com/r/ruslanys/yandex.disk/)


## How it works

1. Run container using interactive mode with mounted directory for configuration
1. Obtain OAuth token using your login and password
1. Stop container
1. Run container in daemon mode with mounted configuration directory which contains auth token

## Setup mode

```
docker run --rm -it \
           -v /opt/yandex.disk/config:/root/.config/yandex-disk \
           -v /opt/yandex.disk/data:/root/Yandex.Disk \
           ruslanys/yandex.disk setup
```

## Daemon mode

```
docker run -d --name yandex.disk --restart always \
           -v /opt/yandex.disk/config:/root/.config/yandex-disk \
           -v /opt/yandex.disk/data:/root/Yandex.Disk \
           ruslanys/yandex.disk
```
