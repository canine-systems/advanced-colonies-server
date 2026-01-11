#!/usr/bin/env bash

function run() {
    echo "# $@"
    "$@" || exit $?
}

echo "=== Advanced Colonies Minecraft Server Setup ==="

echo "1. Installing Java, tmux, htop, and unzip."
run apt install -y default-jre tmux htop unzip
echo "2. Creating Minecraft user."
run useradd -r -m -U -d /opt/minecraft -s /bin/bash minecraft

echo "3. Enable lingering for minecraft user."
run loginctl enable-linger minecraft

echo "4. Add minecraft user to systemd-journal group"
run gpasswd -a minecraft systemd-journal

echo "5. Fetching and running bootstrap-minecraft.sh"
run wget -O /tmp/bootstrap-minecraft.sh https://github.com/canine-systems/advanced-colonies-server/releases/latest/download/bootstrap-minecraft.sh
run su -l minecraft -c '/usr/bin/bash /tmp/bootstrap-minecraft.sh'
run rm /tmp/bootstrap-minecraft.sh
