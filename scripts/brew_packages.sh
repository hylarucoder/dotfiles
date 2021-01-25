#!/bin/bash

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Shell Support
brew install bash
brew install bash-completion2
echo "Adding the newly installed shell to the list of allowed shells"
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# chsh -s /usr/local/bin/bash
brew install zsh
sudo bash -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s /usr/local/bin/zsh
brew install fish
sudo bash -c 'echo /usr/local/bin/fish >> /etc/shells'
# chsh -s /usr/local/bin/fish

brew install wget --with-iri

# Install Python
brew install python
brew install python@2
brew install pypy
brew install pypy3
brew install ipython
brew install pyenv
brew install pyenv-virtualenv
brew install pipenv

# Install Rust
brew install rustup

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install neovim
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

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

brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install gawk
brew install gnutls
brew install gzip
brew install homebrew/x11/xpdf
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install screen
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install tmux
brew install ucspi-tcp # `tcpserver` etc.
brew install wdiff --with-gettext
brew install xz

# Install other useful binaries.
brew install git
brew install git-lfs
brew install git-extras
brew install hub
brew install imagemagick --with-webp
brew install ffmpeg --with-libvpx
brew install lua
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install tree
brew install ssh-copy-id
brew install webkit2png
brew install zopfli
brew install pkg-config
brew install libffi
brew install pandoc
brew install gpg
brew install thefuck
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

# aerial 屏保
# https://github.com/JohnCoates/Aerial
brew cask install aerial
# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
brew cask install keycastr

