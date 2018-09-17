#!/bin/bash

if ! [ $(id -u) = 0 ]; then
    echo "The script needs to be run as root." >&2
    exit 1
fi

LATEST_URL=`curl -Ls -o /dev/null -w %{url_effective} https://github.com/docker/compose/releases/latest`
COMPOSE_VERSION=${LATEST_URL##*/}
DOWNLOAD_URL=https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m`

mkdir -p /opt/bin
curl -L ${DOWNLOAD_URL} -o /opt/bin/docker-compose
chmod +x /opt/bin/docker-compose
