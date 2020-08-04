
ANTIGEN="$HOME/.local/bin/antigen.zsh"

# Install antigen.zsh if not exist
if [ ! -f "$ANTIGEN" ]; then
	echo "Installing antigen ..."
	[ ! -d "$HOME/.local" ] && mkdir -p "$HOME/.local" 2> /dev/null
	[ ! -d "$HOME/.local/bin" ] && mkdir -p "$HOME/.local/bin" 2> /dev/null
	# [ ! -f "$HOME/.z" ] && touch "$HOME/.z"
	URL="http://git.io/antigen"
	TMPFILE="/tmp/antigen.zsh"
	if [ -x "$(which curl)" ]; then
		curl -L "$URL" -o "$TMPFILE" 
	elif [ -x "$(which wget)" ]; then
		wget "$URL" -O "$TMPFILE" 
	else
		echo "ERROR: please install curl or wget before installation !!"
		exit
	fi
	if [ ! $? -eq 0 ]; then
		echo ""
		echo "ERROR: downloading antigen.zsh ($URL) failed !!"
		exit
	fi;
	echo "move $TMPFILE to $ANTIGEN"
	mv "$TMPFILE" "$ANTIGEN"
fi

# Load local bash/zsh compatible settings
INIT_SH_NOFUN=1
INIT_SH_NOLOG=1
DISABLE_Z_PLUGIN=1
[ -f "$HOME/.local/etc/init.sh" ] && source "$HOME/.local/etc/init.sh"

# Initialize antigen
source "$ANTIGEN"
export TERM="xterm-256color"
ZSH_AUTOSUGGEST_USE_ASYNC=1

# default bundles
antigen bundle rupa/z z.sh
antigen bundle Vifon/deer
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle leophys/zsh-plugin-fzf-finder

antigen bundle willghatch/zsh-cdr

# syntax color definition
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

typeset -A ZSH_HIGHLIGHT_STYLES

# ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
# ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'

ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[assign]=none

antigen apply

source $HOME/Cystem/dotfiles/.yazshrc

# export PUB_HOSTED_URL=https://pub.flutter-io.cn
# export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH="$PATH:$HOME/Cystem/flutter/bin"
export PATH="$PATH:$HOME/.poetry/bin"
export PATH="$PATH:$HOME/.SpaceVim.d/bin"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# export PATH="/usr/bin:$PATH:$HOME/Cystem/flutter/bin"
export PATH="/usr/local/opt/curl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

eval "$(pyenv init -)"
export CFLAGS="-I/usr/local/include -L/usr/local/lib"

dirty-staging() {
	brc=`git branch --show-current`
	git checkout develop
	git pull upstream develop
	git merge $brc
	git push upstream develop
	poetry run fab staging
	git checkout -
}

eval "$(starship init zsh)"

export GO111MODULE=on
export GOPROXY=https://goproxy.cn

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias j='z'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
