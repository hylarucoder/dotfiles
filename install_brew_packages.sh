#!/bin/bash

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade --all

brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

brew install binutils --with-default-names
brew install moreutils
brew install findutils --with-default-names
brew install gnu-sed --with-default-names

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
brew install rust
brew install rustup

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools.
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

brew install diffutils
brew install dns2tcp
brew install ed --with-default-names
brew install fcrackzip
brew install findutils --with-default-names
brew install foremost
brew install gawk
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install gzip
brew install hashpump
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
brew install watch
brew install wdiff --with-gettext
brew install wget
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install hub
brew install imagemagick --with-webp
brew install ffmpeg --with-libvpx
brew install terminal-notifier
brew install ncdu
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli
brew install pkg-config libffi
brew install pandoc
brew install gpg
brew install thefuck
brew install fzf

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
brew install sl

brew install goenv

# Install Cask
brew update && brew upgrade && brew cleanup && brew prune
# aerial 屏保
# https://github.com/JohnCoates/Aerial
brew cask install aerial
# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
brew cask install keycastr

