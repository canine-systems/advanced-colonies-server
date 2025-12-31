#!/bin/sh

FILE="$HOME/serverpack-auto-update.zip"

[ -f "$FILE" ] && rm "$FILE" || exit $?
wget https://github.com/canine-systems/advanced-colonies-server/releases/latest/download/advanced-colonies-serverpack.zip -O "$FILE" || exit $?
unzip -l "$FILE" || exit $?
read -p 'Press enter to continue, or Ctrl-c to abort.'
cd "$HOME/server"
unzip "$FILE" || exit $?
