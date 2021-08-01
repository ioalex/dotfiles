# shellcheck shell=bash

# Setup fzf
# ---------
if [[ ! "$PATH" == *usr/bin/fzf* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/bin/fzf"
fi

# Auto-completion
# ---------------
# shellcheck source=/dev/null
[[ $- == *i* ]] && source "/usr/share/fzf/completion.zsh" 2> /dev/null

# Key bindings
# ------------
# shellcheck source=/dev/null
source "/usr/share/fzf/key-bindings.zsh"
