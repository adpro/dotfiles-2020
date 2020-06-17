# change prompt
export PS1="\h:\w $ "

# paths
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/daniel/.dotnet
export PATH=$PATH:/Users/daniel/.dotfiles/bin
export PATH=$PATH:/Users/daniel/dev/bin

# colors to terminal
export CLICOLOR=1

# editor TextEdit
#export EDITOR="open -f"
# editor VSCode
if [ -e "/Applications/Visual Studio Code.app" ]; then
    export EDITOR="/Applications/Visual Studio Code.app/Contents/MacOS/Electron -w"
fi
#export EDITOR="code -w"
# '/Applications/Visual Studio Code.app/Contents/MacOS/Electron' -w
