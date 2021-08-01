#!/usr/bin/env bash
# shellcheck shell=bash

# Installs Tmux Plugin Manager
echo "Installing Tmux Plugin Manager..."
printf "\n"

if ! command -v tmux >/dev/null 2>&1; then
  echo "\u274c: The command 'tmux' was not found on your system."
  echo "Please find a way to install it on your system"
  echo "before attempting to install the plugin manager!"
else
  git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"
  printf "\n"
  echo "Tmux Plugin Manager has been installed."
  echo "Note: You can install plugins by specifying in tmux.conf"
fi
