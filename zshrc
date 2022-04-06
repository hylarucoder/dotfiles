if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	rust
	vi-mode
	autojump
	fzf
	macos
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

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1

#export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH
#export CFLAGS="-I/opt/homebrew/opt/openssl/include"
#export LDFLAGS="-L/opt/homebrew/opt/openssl/lib"
#export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

function auto_poetry_shell {
    if [ ! -n "${POETRY_ACTIVE+1}" ]; then
        if [ -f "pyproject.toml" ] ; then
            poetry shell
        fi
    fi
}

SSH_AGENT_TYPE="default"

function cd {
    builtin cd "$@"
    auto_poetry_shell
}

auto_poetry_shell

