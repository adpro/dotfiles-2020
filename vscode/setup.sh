#!/usr/bin/env sh

source scripts/functions.sh

# install extensions
if [ -d "/Applications/Visual Studio Code.app" ]  then
    substep_info "Installing Visual Studio Code extensions..."
    code --install-extension bmalehorn.vscode-fish
    code --install-extension buianhthang.xml2json
    code --install-extension davidmarek.jsonpath-extract
    code --install-extension eriklynd.json-tools
    code --install-extension lextudio.restructuredtext
    code --install-extension ms-python.python
    code --install-extension nickdemayo.vscode-json-editor
    code --install-extension PNDA.nml-language
    code --install-extension quicktype.quicktype
    code --install-extension streetsidesoftware.code-spell-checker
else
    substep_error "Visual Studio Code is not installed, cannot install extensions."
fi

