#!/usr/bin/env zsh

# Update hombrew.
brew update && brew upgrade && brew cleanup && brew prune

# Python 2 utilities.
pip2 install --upgrade legit
pip2 install --upgrade em-keyboard

# Update Mac apps.
mas upgrade

# NODE

## update NVM 
(
  cd "$NVM_DIR"
  git fetch --tags origin
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"
