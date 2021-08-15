# vim:ft=zsh
# shellcheck shell=bash

# shellcheck source=/dev/null
# FZF Configuration

if [ -x "$(command -v fzf)" ]; then
  [ -f ~/.config/fzf/fzf.zsh ] && source ~/.config/fzf/fzf.zsh
  export FZF_DEFAULT_OPS="--extended"

  if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --hidden -l ""'
  fi

  # export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
  export FZF_CTRL_T_COMMAND='find -L -H'
fi
