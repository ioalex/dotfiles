# shellcheck shell=bash
# shellcheck disable=SC2034

# History
setopt BANG_HIST                          # Perform textual history expansion, csh-style, treating the character ‘!’ specially.
setopt EXTENDED_HISTORY                   # Save each command’s beginning timestamp (in seconds since the epoch) and the duration (in seconds) to the history file.
setopt HIST_FIND_NO_DUPS                  # Up Arrow / Down Arrow ignore duplicates.
setopt HIST_IGNORE_ALL_DUPS               # Remove older duplicate entries from history.
setopt HIST_IGNORE_DUPS                   # Do not enter command lines into the history list if they are duplicates of the previous event.
setopt HIST_IGNORE_SPACE                  # Remove command lines from the history list when the first character on the line is a space.
setopt HIST_REDUCE_BLANKS                 # Remove superfluous blanks from each command line being added to the history list.
setopt HIST_SAVE_NO_DUPS                  # When writing out the history file, older commands that duplicate newer ones are omitted.
setopt HIST_VERIFY                        # Don't execute the command directly upon history expansion.
setopt INC_APPEND_HISTORY                 # zsh sessions append to the history, rather than replacing.
setopt SHARE_HISTORY                      # Share history between different instances of the shell.

# Variables
HISTFILE="$ZSH_HISTORY_DIR"/history
HISTSIZE=50000
SAVEHIST=$HISTSIZE
HISTTIMEFORMAT="%T: "

# Ignore interactive commands from history
export HISTORY_IGNORE="(ls|pwd|exit|cd ..|clear|c)"
