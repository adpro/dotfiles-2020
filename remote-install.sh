#!/usr/bin/env bash


# based on https://github.com/webpro/dotfiles/blob/master/remote-install.sh

SOURCE="https://github.com/adpro/dotfiles"
TARBALL="$SOURCE/tarball/master"
TARGET="$HOME/.dotfiles"
TAR_CMD="tar -xzv -C "$TARGET" --strip-components=1 --exclude='{README.md,LICENSE,remote-install.sh}'"

is_executable() {
  type "$1" > /dev/null 2>&1
}

if is_executable "curl"; then
  CMD="curl -#L $TARBALL | $TAR_CMD"
fi

if [ -z "$CMD" ]; then
  echo "No curl available. Aborting."
else
  echo "Installing dotfiles..."
  mkdir -p "$TARGET"
  eval "$CMD"
fi
