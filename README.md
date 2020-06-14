# .files

These are my **dotfiles**. Take anything you want, but at your own risk.

It targets macOS systems 10.14 and 10.15.

## Package overview

- [Get this repo without git on clean Mac](./remote-install.sh)
- [Basic install script](./macos-setup.sh)
- [Homebrew](https://brew.sh), [homebrew-cask](https://github.com/Homebrew/homebrew-cask) and [Mac App Store CLI](https://github.com/mas-cli/mas) software installation in  [brew.sh](./brew.sh))
- [Git global config](./git.sh)
- [MacOS system configuration](./macos.sh)
- [ssh keys generation](./ssh.sh)
- [apps configurations](./apps/)
- [regular update](./bin/update.sh)

## Install

On a fresh installation of MacOS update system:

```bash
sudo softwareupdate -i -a
```

Then, install this repo with `curl` available:

```bash
bash -c "`curl -fsSL https://raw.githubusercontent.com/adpro/dotfiles/master/remote-install.sh`"
```

This will download using curl this repo to `~/.dotfiles`. Alternatively, clone manually into the desired location:

```bash
git clone https://github.com/adpro/dotfiles.git ~/.dotfiles
```


To `git.sh` add lines:
```bash
git config --global user.name "Your Name"
git config --global user.email your.name@email.net
```

And edit `brew.sh` line with signin dialog with to your real AppleID email:
```bash
mas signin --dialog your.apple.id.email@example.com
```


Use the [macos-setup](./macos-setup.sh) to install everything [listed above](#package-overview):

```bash
cd ~/.dotfiles
./macos-setup.sh
```

## Post-install

- reboot
- Log in to:
    - Dropbox
    - Rider
    - Slack
    - Docker
    - Vagrant
    - Zoom
    - ClickUp
    - Visual Studio
    - WhatApp
    - Keybase
    - Spotify


## Everyday update

For actual versions of installed software run:

```bash
./bin/update.sh
```


## Tools

- [bash](https://www.gnu.org/software/bash/)
- [Homebrew](https://brew.sh)
- [homebrew-cask](https://github.com/Homebrew/homebrew-cask)
- [Mac App Store CLI](https://github.com/mas-cli/mas) 


## Credits

Many thanks to:

- [David's Mac OSX v10.15 macOS Catalina Setup Guide](https://github.com/davidwolfpaw/macbook-setup)
- [Getting started with dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789)
- [webpro's .files](https://github.com/webpro/dotfiles)
- [Cătălin repo’s Dotfiles](https://github.com/alrra/dotfiles)
- [ginfuru's dotfiles](https://github.com/ginfuru/dotfiles)
- [cowboy's dotfiles](https://github.com/cowboy/dotfiles)
- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
- [dotfiles community](https://dotfiles.github.io)

