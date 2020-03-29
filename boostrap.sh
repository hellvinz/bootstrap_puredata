#!/bin/bash -l
if [ -z "$1" ]; then
    echo "pass a patch url to the script"
    exit 1
fi

set -xe 

apt update && apt -y dist-upgrade && apt install -y curl

mkdir -p /home/pi/patches/
curl -L $1 > /home/pi/patches/default.pd

if ! [ -x "$(command -v salt-call)" ]; then
  echo "installing salt"
  apt install -y salt-minion
fi

echo "file_client: local" > /etc/salt/minion

mkdir -p /srv/salt
cp -a srv/* /srv/

salt-call --local state.apply
