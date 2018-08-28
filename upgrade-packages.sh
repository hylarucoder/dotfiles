#!/usr/bin/env bash

# Update Mac apps.
mas upgrade

# Update brew and software installed by hombrew.
brew update && brew upgrade && brew cleanup && brew prune

# Python 2 utilities.
pip install -U neovim

# Python 3 utilities.
pip3 install -U em-keyboard
pip3 install -U neovim
pip3 install -U black
pip3 install -U flake8 pyflakes isort pycodestyle 
pip3 install -U vim-vint proselint yamllint 


# NODE

## install nvm first : https://github.com/creationix/nvm

## update NVM 
(
  cd "$NVM_DIR"
  git fetch --tags origin
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"


npm install -g cnpm --registry=https://registry.npm.taobao.org

## dev
npm install -g yarn
npm install -g prettier

## lint hint
npm install -g eslint-plugin-vue eslint jshint jsxhint jsonlint stylelint sass-lint markdownlint-cli 

## tools
npm install -g gitbook-cli
npm install -g hexo-cli
npm install -g vue-cli
npm install -g raml-cop write-good
npm install -g speed-test
