

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

source "$ANTIGEN"
export TERM="xterm-256color"

ZSH_AUTOSUGGEST_USE_ASYNC=1

# default bundles
antigen bundle rupa/z z.sh
antigen bundle Vifon/deer
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle willghatch/zsh-cdr

antigen apply

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

export PATH="$PATH:$HOME/Cystem/flutter/bin"
export PATH="$PATH:$HOME/.SpaceVim.d/bin"

export PATH="/usr/local/opt/curl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


for f in ~/Cystem/dotfiles/zsh/*; do
  source $f
done

for f in ~/Cystem/dotfiles/zsh/plugins/*; do
  source $f
done

for f in ~/Cystem/dotfiles/zsh/lang/*; do
  source $f
done

export CARGO_NET_GIT_FETCH_WITH_CLI=true
