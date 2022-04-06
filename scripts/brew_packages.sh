#!/bin/bash

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Shell Support
brew install bash
brew install bash-completion2
echo "Adding the newly installed shell to the list of allowed shells"
sudo bash -c 'echo /opt/homebrew/bin/bash >> /etc/shells'
brew install zsh
sudo bash -c 'echo /opt/homebrew/bin/zsh >> /etc/shells'
chsh -s /opt/homebrew/bin/zsh
brew install fish
sudo bash -c 'echo /opt/homebrew/bin/zsh >> /etc/shells'

brew install wget

# Install Python
brew install python
brew install python@2
brew install pypy
brew install pypy3
brew install pyenv
brew install pyenv-virtualenv

# Install Rust
brew install rustup

brew install neovim
brew install coreutils
brew install diffutils
brew install binutils 
brew install moreutils
brew install findutils
brew install gnu-sed
brew install ed
brew install findutils
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install grep
brew install wget
brew install bat
brew install exa
brew install json_pp
brew install gawk
brew install gnutls
brew install gzip
brew install nmap
brew install sqlmap
brew install tmux

brew install git
brew install hub
brew install imagemagick
brew install ffmpeg
brew install lua
brew install p7zip
brew install pv
brew install rename
brew install tree
brew install ssh-copy-id
brew install fzf

brew install terminal-notifier

# Lxml and Libxslt
brew install libxml2
brew install libxslt
brew link libxml2 --force
brew link libxslt --force

# gitbook autocover
brew install pkg-config cairo pango libpng jpeg giflib

# funny tools
brew install fortune
brew install cowsay

brew install goenv

# https://github.com/sindresorhus/quick-look-plugins
brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo
brew install keycastr

