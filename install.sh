#!/bin/bash
#

# git config
git config --global user.name "steph-sabotasan"
git config --global user.email "80356791+steph-sabotasan@users.noreply.github.com"
git config --global core.editor vim
git config --global pager.branch false
git config --global push.default current
git config --global alias.lo  "log --pretty='format:%C(auto)%h %C(green)%an %C(auto)%s' -10"

# git completion
curl -fLo ~/.zsh/git-completion.zsh --create-dirs https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

# vim colors
mkdir -p ~/.vim/colors
cp ~/.dotfiles/.vim/colors/molokai.vim ~/.vim/colors/

# links
ln -s ~/.dotfiles/.zshrc ~/
ln -s ~/.dotfiles/.vimrc ~/

# vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +qall

# zsh 
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    sudo apt install -y zsh
    zsh
fi;
