#!/usr/bin/env bash

# Install
echo -e "\x1B[34;1mSymlinking dotfiles.\x1B[0m"
ln -vsfn ~/.dotfiles/.aliases ~/
ln -vsfn ~/.dotfiles/.bash_completion ~/
ln -vsfn ~/.dotfiles/.bash_profile ~/
ln -vsfn ~/.dotfiles/.bashrc ~/
ln -vsfn ~/.dotfiles/.functions ~/
ln -vsfn ~/.dotfiles/.gitconfig ~/
ln -vsfn ~/.dotfiles/.gitignore ~/
ln -vsfn ~/.dotfiles/.inputrc ~/
ln -vsfn ~/.dotfiles/.tmux.conf ~/
ln -vsfn ~/.dotfiles/.npmrc ~/
ln -vsfn ~/.dotfiles/.nix ~/
ln -vsfn ~/.dotfiles/.osx ~/
ln -vsfn ~/.dotfiles/.sshmotd ~/
rm -rf ~/.vim && ln -vsfn ~/.dotfiles/.vim ~/
ln -vsfn ~/.dotfiles/.vimrc ~/
ln -vsfn ~/.dotfiles/dotfiles.sh ~/
rm -rf ~/.weechat && ln -vsfn ~/.dotfiles/.weechat ~/

# Create user bin if it doesn't exist.
if [ ! -d "$HOME/bin" ]; then
	echo -e "\x1B[34;1mCreating user bin directory for extra PATH.\x1B[0m"
	mkdir $HOME/bin
fi

# Install dependencies
echo -e "\x1B[34;1mInstalling dependencies.\x1B[0m"
ln -vsfn ~/.dotfiles/.dependencies ~/
source ~/.dependencies

# Create optional .extra file to be sourced along repo content.
if [ ! -f ~/.extra ]; then
	echo -e "\x1B[34;1mGenerating .extra file.\x1B[0m"
	touch ~/.extra
fi;

# Create .gitconfig.local file to hold user credentials for Git.
if [ ! -f ~/.gitconfig.local ]; then
	echo -e "\x1B[34;1mGenerating .gitconfig.local file.\x1B[0m"
	touch ~/.gitconfig.local
fi;

# Update terminal
echo -e "\x1B[34;1mUpdating terminal with new profile.\x1B[0m"
source ~/.bash_profile;

echo -e "\x1B[97;4;1mDone!\x1B[0m"
