# vim:ft=zsh
# shellcheck shell=bash

# Source: williamclot https://github.com/microsoft/terminal/issues/755
bindkey -e

# Ctrl + Backspace
bindkey '^H' backward-kill-word

# Ctrl + Arrows
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# Ctrl + H, L

# Source: https://jdhao.github.io/2019/06/13/zsh_bind_keys/
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# Edit line in vim with ctrl-e
# Source: <https://youtube.com/watch?v=eLEo4OQ-cuQ>
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
