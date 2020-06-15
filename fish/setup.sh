#!/usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

source ../scripts/functions.sh
    
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

