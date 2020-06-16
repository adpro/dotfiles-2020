#!/usr/bin/env sh

source scripts/functions.sh

mkdir -p "$HOME/.config/fish"

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.config/fish)"

info "Setting up fish shell..."

substep_info "Creating fish config folders..."
mkdir -p "$DESTINATION/functions"
mkdir -p "$DESTINATION/customs"

find * -name "*fish*" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
clear_broken_symlinks "$DESTINATION"

info "Fish shell setup ended."

