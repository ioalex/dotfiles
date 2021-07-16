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
