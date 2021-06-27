# Setup fzf
# ---------
if [[ ! "$PATH" == *usr/bin/fzf* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/bin/fzf"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/share/fzf/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/usr/share/fzf/key-bindings.bash"
