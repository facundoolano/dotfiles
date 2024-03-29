#!/usr/bin/env bash

# TODO run this script from raw github like github does and clone the repo as part of it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# allow many open files
ulimit -n 10240


brew install vim ag aspell asdf thefuck tmux
brew install --cask firefox google-chrome slack telegram whatsapp iterm2 emacs-mac caffeine docker spotify itsycal zoom signal paintbrush discord awscli libreoffice

git config --global init.defaultBranch main
git config --global user.name "facundo"
git config --global user.email "facundo.olano@gmail.com"

ssh-keygen -t ed25519 -C "facundo.olano@gmail.com"
# Add to github

# assumes already cloned dotfiles repo
cp ~/dev/facundoolano/dotfiles/.zshrc ~/.zshrc
echo "export PATH=\$HOME/bin:/usr/local/bin:\$PATH" >> ~/.zshenv

curl -L git.io/antigen > ~/dev/antigen.zsh

cd ~/
git clone git@github.com:facundoolano/emacs.d.git .emacs.d

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain install nightly
rustup component add rls
rustup component add rust-src
rustup component add rustfmt
rustup component add rust-analyzer
rustup component add clippy --toolchain=nightly

pip3 install --user isort
pip3 install --user autopep8

asdf plugin add nodejs
asdf install nodejs lts
asdf global nodejs lts
npm install -g livedown
