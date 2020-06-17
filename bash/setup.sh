#!/usr/bin/env sh

source scripts/functions.sh

cd bash

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Setting up bash shell..."

find * -name "*bash*" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
clear_broken_symlinks "$DESTINATION"

cd ..

info "Bash shell setup ended."

