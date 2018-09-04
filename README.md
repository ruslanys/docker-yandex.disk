# Yandex.Disk Docker image

## How it works

1. Run container using interactive mode with mounted directory for configuration
1. Obtain OAuth token using your login and password
1. Stop container
1. Run container in daemon mode with mounted configuration directory which contains auth token

## Setup mode

```
docker run --rm -it \
           -v /opt/yandex.disk/config:/root/.config/ \
           -v /opt/yandex.disk/data:/root/Yandex.Disk \
           ruslanys/yandex.disk yandex-disk setup
```

## Daemon mode

```
docker run -d --name yandex.disk \
           -v /opt/yandex.disk/config:/root/.config/ \
           -v /opt/yandex.disk/data:/root/Yandex.Disk \
           ruslanys/yandex.disk
```i