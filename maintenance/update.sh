#!/bin/bash

function run() {
    echo "> $@"
    "$@" || exit $?
}

if [ "$1" = "--dry-run" ]; then
    DRYRUN="--dry-run"
fi

TMPDIR="$HOME/serverpack-update"
FILE="$HOME/serverpack-auto-update.zip"

if [ -f "$FILE" ]; then
    rm "$FILE" || exit $?
fi

run rm -rf "$TMPDIR"
run mkdir "$TMPDIR"
cd "$TMPDIR"

run wget https://github.com/canine-systems/advanced-colonies-server/releases/latest/download/advanced-colonies-serverpack.zip -O "$FILE"
run unzip -l "$FILE"
read -p 'Press enter to continue, or Ctrl-c to abort.'

run unzip "$FILE"

FILES=$(/usr/bin/ls -1 | grep -v squaremap)

run rsync $DRYRUN -avhc --progress --delete $FILES squaremap/*.* "$HOME/server/"
