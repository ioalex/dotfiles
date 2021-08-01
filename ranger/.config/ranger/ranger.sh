#!/usr/bin/env bash
# shellcheck shell=bash

# Installs Ranger Plugins
echo "Installing plugins for Ranger..."
printf "\n"

if ! command -v ranger >/dev/null 2>&1; then
  echo "\u274c: The command 'ranger' was not found on your system."
  echo "Please find a way to install it on your system"
  echo "before attempting to install plugins!"
else
  # Ranger Dev Icons
  git clone https://github.com/alexanderjeurissen/ranger_devicons "$XDG_CONFIG_HOME/ranger/plugins/ranger_devicons"
  printf "\n"
  echo "\u2713: Plugins for Ranger have been installed."
fi
