#!/usr/bin/env fish

# set pyenv 
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths

echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  pyenv init - | source\nfi' >> ~/.config/fish/config.fish

echo "
#!/bin/sh
# check if pyenv is available
# edit: fixed redirect issue in earlier version
if which pyenv >/dev/null 2>&1; then
  # assumes default location of brew in `/usr/local/bin/brew`
  /usr/bin/env PATH=\"${PATH//$(pyenv root)\/shims:/}\" /usr/local/bin/brew \"$@\"
else
  /usr/local/bin/brew \"$@\"
fi
" >> $HOME/bin/brew
chmod a+x brew

set -Ua fish_user_paths $HOME/bin
