# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi
bindkey '^h' fzf-history-widget
bindkey '^e' fzf-cd-widget
source <(fzf --zsh)
