export PATH=$HOME/bin:/usr/local/bin:$PATH

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

source "$HOME/.cargo/env"
eval "$(/opt/homebrew/bin/brew shellenv)"
