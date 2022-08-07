#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


brew install vim ag aspell asdf thefuck
brew install --cask firefox google-chrome slack telegram whatsapp iterm2 emacs caffeine docker itsycal

git config --global init.defaultBranch main
git config --global user.name "facundo"
git config --global user.email "facundo.olano@gmail.com"

ssh-keygen -t ed25519 -C "facundo.olano@gmail.com"
# Add to github


# assumes already cloned dotfiles repo
cp ~/dev/facundoolano/dotfiles/.zshrc ~/.zshrc

curl -L git.io/antigen > ~/dev/antigen.zsh

cd ~/
git clone git@github.com:facundoolano/emacs.d.git .emacs.d

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain install nightly
rustup component add rls
rustup component add rust-src
rustup component add rustfmt
rustup component add clippy --toolchain=nightly

cd ~/dev/ && git clone https://github.com/rust-analyzer/rust-analyzer.git
cd rust-analyzer
cargo xtask install --server

pip3 install --user isort
pip3 install --user autopep8

asdf plugin add nodejs
asdf install nodejs lts
asdf global nodejs lts
npm install -g livedown
