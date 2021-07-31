#!/usr/bin/env bash
# shellcheck shell=bash

# Information
# LAST UPDATED: 10/06/2021
#
# __________       .__
# \____    /  _____|  |_________   ____
#   /     /  /  ___/  |  \_  __ \_/ ___\
#  /     /_  \___ \|   Y  \  | \/\  \___
# /_______ \/____  >___|  /__|    \___  >
#         \/     \/     \/            \/
#
# Z-Shell Configuration File
# This file is used for setting user's interactive shell configuration and executing commands, will be read when starting as an interactive shell.
# Source: <https://wiki.archlinux.org/title/Zsh>
# Alex He <github.com/ioalex>

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source shell configuration
shellrc+=("$SHELL_CONFIG/aliasrc")
for file in "${shellrc[@]}"; do
  if [[ -a "$file" ]]; then
    # shellcheck source=/dev/null
    source "$file"
  fi
done

# Source shell functions
if [ -z "$SHELL_CONFIG/functions" ]; then
   echo "No functions available."
else
  for file in "$SHELL_CONFIG/functions"/*; do
    # source $file
    autoload -Uz $file
  done
fi

# Source Z-Shell configuration files
config_files=(~/.config/zsh/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

source /home/alex/.config/broot/launcher/bash/br

if [ -f “${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins.zsh” ]; then
    # shellcheck source=/dev/null
	source “${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins.zsh”
fi

if [ -f “${XDG_CONFIG_HOME:-$HOME/.config}/zsh/_evalcache” ]; then
    # shellcheck source=/dev/null
	source “${XDG_CONFIG_HOME:-$HOME/.config}/zsh/_evalcache”
fi

