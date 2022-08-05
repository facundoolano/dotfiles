ZSH_AUTOSUGGEST_STRATEGY=(history completion)

setopt prompt_subst
PS1='%n@%m $(shrink_path -f) $ '

bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward

. /usr/local/opt/asdf/libexec/asdf.sh

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/facundo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


autoload -U select-word-style
select-word-style bash

source /Users/facundo/dev/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle shrink-path
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

eval $(thefuck --alias)
