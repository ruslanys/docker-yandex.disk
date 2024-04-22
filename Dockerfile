FROM ubuntu:22.04

MAINTAINER Ruslan Molchanov <ruslanys@gmail.com>

RUN apt-get update \

    # Upgrade
    && apt-get upgrade -y \
    && apt-get dist-upgrade -y \

    # Install dependencies
    && apt-get install wget -y \

    # Download & Install Yandex.Disk
    && wget https://repo.yandex.ru/yandex-disk/yandex-disk_latest_amd64.deb \
    && dpkg -i yandex-disk_latest_amd64.deb \
    && apt-get install -f -y \

    # Cleanup
    && rm *.deb \
    && apt-get purge -y \
    && apt-get autoremove -y \
    && apt-get autoclean -y \


    && mkdir /root/Yandex.Disk

ENTRYPOINT ["yandex-disk"]
CMD ["start", "--no-daemon", "--dir=/root/Yandex.Disk"]
