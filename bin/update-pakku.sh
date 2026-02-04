#!/usr/bin/env sh

mkdir -p .cache || exit $?
wget https://github.com/juraj-hrivnak/Pakku/releases/latest/download/pakku.jar -O .cache/pakku.jar || exit $?
