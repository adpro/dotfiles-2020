# .files

These are my **dotfiles**. Take anything you want, but at your own risk.

It targets macOS systems 10.14 and 10.15.

## Package overview

- [Get this repo without git on clean Mac](./remote-install.sh)
- [Basic install script](./macos-setup.sh)
- [Homebrew](https://brew.sh), [homebrew-cask](https://github.com/Homebrew/homebrew-cask) and [Mac App Store CLI](https://github.com/mas-cli/mas) software installation in  [brew.sh](./install/brew.sh))
- [dotnet core install script](./dotnet/setup.sh)
- [git configuration](./git/setup.sh)
- [MacOS system configuration](./macos/setup.sh)
- [fish configuration](./fish/setup.sh)
- [iterm2 configuration](./iterm/setup.sh)
- [vscode configuration](./vscode/setup.sh)
- [regular update](./bin/update.sh)

## Install

Check manual installed software like Google Chrome, Mozilla Firefox. If it is installed, uninstall them.

On a fresh installation of MacOS update system:

```bash
sudo softwareupdate -i -a
```

Sign in to Mac App Store by Apple ID.

Then install this repo with `curl` available:

```bash
bash -c "`curl -fsSL https://raw.githubusercontent.com/adpro/dotfiles/master/remote-install.sh`"
```

This will download using curl this repo to `~/.dotfiles`. Alternatively, clone manually into the desired location:

```bash
git clone https://github.com/adpro/dotfiles.git ~/.dotfiles
```


Edit `git/setup.sh` lines with your real name and email (lines 8 and 9):
```bash
git config --global user.name "Your Name"
git config --global user.email your.name@mail.address
```

Use the [macos-setup](./macos-setup.sh) to install everything [listed above](#package-overview):

```bash
cd ~/.dotfiles
source macos-setup.sh
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
    - WhatsApp
    - Keybase
    - Spotify

### Dropbox settings

Dropbox => Preferences => Sync => Selective Sync => Choose Folders and select folder with access info.

### Rider settings

Rider settings are shared in private repository. Run Rider, on welcome screen go to Configure => Settings Repository... and set upstream URL: `https://github.com/adpro/rider-settings` and run `Overwrite Local`.

Use `Rider => Preferences => Tools => Settings repository`

License needed, use JetBrains Account option.

### Visual Studio for Mac / Professional

License info about using the same license for VS for Mac and VS for Windows is on [Visual Studio for Mac support](https://visualstudio.microsoft.com/vs/support/mac/can-use-existing-visual-studio-license-mac/)


### macOS installation downloads for virtualization

Get installation packages for macOS for virtualization ([MacWorld: How to download old Mac OS X and macOS versions](https://www.macworld.co.uk/how-to/mac-software/download-old-os-x-3629363/#toc-3629363-2)):

- [macOS 10.14 Mojave](https://apps.apple.com/cz/app/macos-mojave/id1398502828?l=cs&mt=12)
- [macOS 10.15 Catalina](https://apps.apple.com/cz/app/macos-catalina/id1466841314?l=cs&mt=12)

and do not install - quit installers.


## Manual Installation

- Manual [download](https://www.archimatetool.com/download/) and install [Archi](https://www.archimatetool.com/).
- Manual [download](https://www.virtualbox.org/wiki/Downloads) and install [VirtualBox](https://www.virtualbox.org/).

Next step is installation of company's software from repos (*AdminConsole and so on).


## Everyday update

For actual versions of installed software run:

```bash
source ~/.dotfiles/bin/update.sh
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
- [dotnet install script documentation page](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-install-script)