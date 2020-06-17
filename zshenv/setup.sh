#!/usr/bin/env sh

source scripts/functions.sh

cd zshenv

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Setting up zsh shell..."

substep_info "Creating zsh config folders..."
mkdir -p "$DESTINATION/functions"

find * | while read fn; do
    if [[ $fn == *"setup.sh"* ]]; then
        continue
    fi
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
clear_broken_symlinks "$DESTINATION"

cd ..

info "zsh shell setup ended."

