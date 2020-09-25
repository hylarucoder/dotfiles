# oh my zsh 
export ZSH="/Users/twocucao/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
	git
	rust
	rustup
	vi-mode
	autojump
	fzf
	osx
	docker
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-completions
)

autoload -U compinit && compinit


ZSH_AUTOSUGGEST_USE_ASYNC=1

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"



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
