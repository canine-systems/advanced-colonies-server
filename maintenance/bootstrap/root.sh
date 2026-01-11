#!/usr/bin/env bash

function run() {
    echo "# $@"
    "$@" || exit $?
}

cd
run apt install default-jre tmux htop
run useradd -r -m -U -d /opt/minecraft -s /bin/bash minecraft

run wget -O /tmp/bootstrap-noroot.sh https://raw.github.com/canine-systems/advanced-colonies/blob/main/maintenance/bootstrap/minecraft.sh
run su -l minecraft bash /tmp/bootstrap-minecraft.sh
run rm /tmp/bootstrap-minecraft.sh
