#!/usr/bin/env bash

# Update brew and software installed by hombrew.
brew update && brew upgrade && brew cleanup && brew prune

# Python 2 utilities.
pip install --upgrade neovim

# Python 3 utilities.
pip3 install --upgrade legit
pip3 install --upgrade em-keyboard
pip3 install --upgrade neovim
pip3 install --upgrade dbgp pep8 flake8 pyflakes isort
pip3 install --upgrade pycodestyle pyflakes flake8 vim-vint proselint yamllint

# Update Mac apps.
mas upgrade

# NODE

## update NVM 
(
  cd "$NVM_DIR"
  git fetch --tags origin
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# install nvm first
# https://github.com/creationix/nvm

npm install -g cnpm --registry=https://registry.npm.taobao.org
npm install -g yarn
npm install -g prettier
npm install -g eslint-plugin-vue
npm install -g eslint
npm install -g gitbook-cli
npm install -g hexo-cli
npm install -g speed-test
npm install -g vue-cli
npm install -g jshint jsxhint jsonlint stylelint sass-lint
npm install -g raml-cop markdownlint-cli write-good
