#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


brew install vim ag aspell asdf thefuck
brew install --cask firefox google-chrome slack telegram whatsapp iterm2 emacs caffeine 


ssh-keygen -t ed25519 -C "facundo.olano@gmail.com"
# Add to github


# assumes already cloned dotfiles repo
ln ~/dev/facundoolano/dotfiles/.zshrc ~/.zshrc

curl -L git.io/antigen > ~/dev/antigen.zsh

cd ~/
git clone git@github.com:facundoolano/emacs.d.git .emacs.d


