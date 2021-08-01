#!/usr/bin/env bash
# shellcheck shell=bash

# Installs Tmux Plugin Manager
echo "Installing Tmux Plugin Manager..."
echo "\n"

if ! command -v tmux >/dev/null 2>&1; then
  echo "\u274c: The command 'tmux' was not found on your system."
  echo "Please try running 'brew install tmux' or use the 'brew.sh' script"
  echo "before attempting to install the plugin manager!"
else
  git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"
  echo "\n"
  echo "Tmux Plugin Manager has been installed."
  echo "Note: You can install plugins by specifying in tmux.conf"
fi
