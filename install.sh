#!/bin/sh
# This script will try to copy the configuration files
# for one specific user's home directory

cp -i "$PWD/.bash_aliases" "$HOME"
cp -i "$PWD/.bash_logout" "$HOME"
cp -i "$PWD/.bashrc" "$HOME"
cp -i "$PWD/.gitconfig" "$HOME"
cp -i "$PWD/.npmrc" "$HOME"
cp -i "$PWD/.profile" "$HOME"

cp -i -r "$PWD/.gnupg" "$HOME"
cp -i -r "$PWD/.profile.d" "$HOME"

