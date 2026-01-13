#!/usr/bin/env bash

NEOFORGE_VERSION="21.1.218"

INSTALL_DIR="$HOME/server"

TMPDIR="$HOME/bootstrap"
INSTALLER="$TMPDIR/neoforge-installer.jar"
MODPACK="$TMPDIR/advanced-colonies-serverpack.zip"
SYSTEMD_DIR="$HOME/.config/systemd/user"

if [ -d "$INSTALL_DIR" ]; then
    echo "Refusing to install, because it appears to already be installed: $INSTALL_DIR"
    exit 1
fi

function run() {
    echo "> $@"
    "$@" || exit $?
}

run rm -rf "$TMPDIR"
run mkdir "$TMPDIR"

run mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR" || exit $?

run wget -O "$INSTALLER" "https://maven.neoforged.net/releases/net/neoforged/neoforge/$NEOFORGE_VERSION/neoforge-$NEOFORGE_VERSION-installer.jar"
run java -jar "$INSTALLER" "$INSTALL_DIR"

run wget -O "$MODPACK" "https://github.com/canine-systems/advanced-colonies-server/releases/latest/download/advanced-colonies-serverpack.zip"
run unzip -o "$MODPACK"

echo "> echo eula=true > eula.txt"
echo "eula=true" > eula.txt

run mkdir -p "$SYSTEMD_DIR"

cd "$INSTALL_DIR/maintenance/systemd"
for FILE in *.service *.timer; do
    run ln -s "$PWD/$FILE" "/opt/minecraft/.config/systemd/user/$FILE"
done

export XDG_RUNTIME_DIR=/run/user/$(id -u minecraft)
export DBUS_SESSION_BUS_ADDRESS=/run/user/$(id -u minecraft)/bus

run systemctl --user enable minecraft
run systemctl --user enable sync-map.timer
