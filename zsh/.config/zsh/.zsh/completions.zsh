#!/usr/bin/env bash
# shellcheck shell=bash

# fpath+=~/.config/zsh/.zsh/completions/_fnm

fpath=(~/.config/zsh/.zsh/completions /usr/share/zsh/site-functions $fpath)

# Autocompletion
# Enable Autocompletion
# Completion; use cache if updated within 24h
autoload -Uz compinit
if [[ -n $HOME/.zcompdump(#qN.mh+24) ]]; then
  compinit -d "$XDG_CACHE_HOME/zsh/zcompdump";
else
  compinit -C;
fi;

# compinit -d "$ZSH_CACHE_DIR/zcompdump"
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path "$XDG_CACHE_HOME/zsh/zcompdump"

# disable zsh bundled function mtools command mcd
# which causes a conflict.
compdef -d mcd

# Files to ignore during completion
fignore=(DS_Store $fignore)

# _comp_files=($XDG_CACHE_HOME/zsh/zcompcache(Nm-20))
# if (( $#_comp_files )); then
#     compinit -i -C -d "$XDG_CACHE_HOME/zsh/zcompcache"
# else
#     compinit -i -d "$XDG_CACHE_HOME/zsh/zcompcache"
# fi
# unset _comp_files

# Load complist module
# Provides menu list for select completion results
zmodload -i zsh/complist

# Verbose completion results
zstyle ':completion:*' verbose true

# Group results by category
zstyle ':completion:*' group-name ''

# Show message while waiting for completion
zstyle ':completion:*' show-completer true

# Pretty messages during pagination
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# Nicer format for completion messages
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:corrections' format '%U%F{green}%d (errors: %e)%f%u'
zstyle ':completion:*:warnings' format '%F{202}%BSorry, no matches for: %F{214}%d%b'

# Autocompletion menu
setopt AUTO_LIST # Automatically list choices on ambiguous completion
setopt AUTO_MENU # Automatically use menu completion
setopt ALWAYS_TO_END # Move cursor to end if word had one match

# Improve autocompletion style
zstyle ':completion:*' menu select # Select completions with arrow keys
zstyle ':completion:*' group-name '' # Group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # Enable approximate matches for completion
