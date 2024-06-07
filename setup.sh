#!/usr/bin/env bash

# TODO run this script from raw github like github does and clone the repo as part of it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# allow many open files
ulimit -n 10240


brew install vim ag aspell asdf tmux go isort autopep8
brew tap railwaycat/emacsmacport
brew install --cask firefox google-chrome slack telegram whatsapp iterm2 docker spotify itsycal zoom signal paintbrush discord libreoffice

git config --global init.defaultBranch main
git config --global user.name "facundo"
git config --global user.email "facundo.olano@gmail.com"

ssh-keygen -t ed25519 -C "facundo.olano@gmail.com"
# Add to github

# assumes already cloned dotfiles repo
cp ~/dev/facundoolano/dotfiles/.zshrc ~/.zshrc
cp ~/dev/facundoolano/dotfiles/.zprofile ~/.zprofile

curl -L git.io/antigen > ~/dev/antigen.zsh

cd ~/
git clone git@github.com:facundoolano/emacs.d.git .emacs.d

# fix macos defaults of super slow key input (mostly noticeable in emacs)
# https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)

# font smoothing stuff for the external display
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
defaults -currentHost write -globalDomain AppleFontSmoothing -int 3 # default is 2

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
rustup toolchain install nightly
rustup component add rls
rustup component add rust-src
rustup component add rustfmt
rustup component add rust-analyzer
rustup component add clippy --toolchain=nightly

asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
npm install -g livedown

go install golang.org/x/tools/gopls@latest
go install -v golang.org/x/tools/cmd/godoc@latest
go install github.com/facundoolano/jorge@latest
