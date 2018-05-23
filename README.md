# c-vim

喜欢 k-vim 的配置，在自己的技能树逐渐稳定下来之后，我依照我的需求对 k-vim 进行再配置，这就是我日常编辑所用的 vim 配置。

> Note : Vim 8 Only , tested on MacVim Only

特别感谢
 - k-vim
 - SpaceVim

## Note

本项目被并入我的另一个项目 dotfiles

## 安装

```
# 安装 MacVim 并执行 brew linkapps, 并且 Python2/3 也务必装上。
brew install macvim --with-luajit --with-lua --with-python3
brew linkapps
mkdir -p ~/dotfiles && cd ~/dotfiles
git clone https://github.com/twocucao/c-vim.git
chmod a+x ~/dotfiles/c-vim/scripts/markdown2ctags.py
chmod a+x ~/dotfiles/c-vim/scripts/rst2ctags.py
cd ~/dotfiles/c-vim/ && sh -x ./install.sh
```

## ChangeLog

- **20170810** 修改 YCM 至 NeoComplete
- **20171007** 解决部分快捷键冲突

