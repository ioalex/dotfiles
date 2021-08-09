# shellcheck shell=bash
# shellcheck disable=SC1036,SC2034

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
  # shellcheck source=/dev/null
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source environment variables
env_files=(~/.config/shell/**/*.env)
for file in "${env_files[@]}"; do
  # shellcheck source=/dev/null
  source "${file}"
done

# Source shell aliases
shellrc+=("$SHELL_CONFIG/aliasrc")
for file in "${shellrc[@]}"; do
  if [[ -a "${file}" ]]; then
    # shellcheck source=/dev/null
    source "${file}"
  fi
done

# Source shell functions
if [ -d "$SHELL_CONFIG/functions" ]; then
  for file in "$SHELL_CONFIG/functions"/*; do
    # source $file
    autoload -Uz "${file}"
  done
else
   echo "No functions available."
fi

# Source Z-Shell configuration files
# config_files=(~/.config/zsh/.zsh/**/*.zsh(N))
config_files=("${XDG_CONFIG_HOME:="$HOME/.config"}/zsh"/.zsh/**/*.zsh(N))
for file in "${config_files[@]}"
do
  # shellcheck source=/dev/null
  source "${file}"
done

if [ -f "${XDG_CONFIG_HOME:-"$HOME/.config"}/broot/launcher/bash/br" ]; then
    # shellcheck source=/dev/null
	source "${XDG_CONFIG_HOME:-"$HOME/.config"}/broot/launcher/bash/br"
fi

# Homebrew version of ZSH comes with helpfiles
if [[ -d /opt/homebrew/share/zsh ]]; then
  unalias run-help
  autoload run-help
  HELPDIR=/opt/homebrew/share/zsh/helpfiles
fi

# Automatically remove duplicates from these arrays
typeset -U path cdpath fpath manpath

# Plugins - managed with Zinit
load=light

# Load prompt first - without investigating
zinit ice depth=1; zinit $load romkatv/powerlevel10k
zinit ${load} mroth/evalcache

# Plugins loaded in turbo mode and without investigating.
# wait allows the user postponing loading of a plugin to the moment when the processing of .zshrc is finished and the first prompt is being shown
zinit wait lucid ${load}-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull"zinit creinstall -q ." \
      zsh-users/zsh-completions \
  hlissner/zsh-autopair \
  mollifier/cd-gitroot \
  peterhurford/git-it-on.zsh

# Load snippets asynchronously
zinit wait lucid for \
  OMZP::sudo \
  OMZP::zsh_reload

# Plugins to install / load if on Mac OSX
if [[ "$OSTYPE" == "darwin"* ]]; then
  zinit ice svn wait lucid; zinit snippet PZT::modules/osx
  zinit wait lucid; zinit snippet OMZP::dash
fi

# Use evalcache to cache evals; reducing startup time
_evalcache fnm env
_evalcache zoxide init zsh
_evalcache thefuck --alias fuck
_evalcache hub alias -s
