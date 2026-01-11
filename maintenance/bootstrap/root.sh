#!/usr/bin/env bash

function run() {
    echo "# $@"
    "$@" || exit $?
}

echo "=== Advanced Colonies Minecraft Server Setup ==="

echo "1. Installing Java, tmux, and htop."
run apt install -y default-jre tmux htop
echo "2. Creating Minecraft user."
run useradd -r -m -U -d /opt/minecraft -s /bin/bash minecraft

echo "3. Fetching and running bootstrap/minecraft.sh"
run wget -O /tmp/bootstrap-minecraft.sh https://github.com/canine-systems/advanced-colonies-server/raw/refs/heads/main/maintenance/bootstrap/minecraft.sh
run su -l minecraft -c /usr/bin/bash /tmp/bootstrap-minecraft.sh
run rm /tmp/bootstrap-minecraft.sh
