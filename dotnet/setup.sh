#!/usr/bin/env sh

#DIR=$(dirname "$0")
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "$DIR"

source scripts/functions.sh
    
SOURCE="$(realpath .)"

echo "Installing .NET Core..."

if "$SOURCE/dotnet/"dotnet-install.sh "--channel" "Current"; then
    substep_success "Installed dotnet core Current"
else
    substep_error "Failed to installed dotnet core Current"
fi

if "$SOURCE/dotnet/"dotnet-install.sh "--channel" "LTS"; then
    substep_success "Installed dotnet core LTS"
else
    substep_error "Failed to installed dotnet core LTS"
fi

if "$SOURCE/dotnet/"dotnet-install.sh "--channel" "2.2"; then
    substep_success "Installed dotnet core v2.2"
else
    substep_error "Failed to installed dotnet core v2.2"
fi