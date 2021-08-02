# shellcheck shell=bash
# shellcheck disable=SC2034

# History Setup
HISTFILE="$ZSH_HISTORY_DIR"/history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTTIMEFORMAT="%T: "

setopt INC_APPEND_HISTORY # ZSH sessions append to the history, rather than replacing
setopt HIST_REDUCE_BLANKS # Remove superfluous blanks from history items
setopt HIST_FIND_NO_DUPS # Up Arrow / Down Arrow ignore duplicates
setopt HIST_IGNORE_DUPS # Consecutive duplicates do not get added to the history
setopt HIST_IGNORE_ALL_DUPS # Remove older duplicate entries from history
setopt SHARE_HISTORY # Share history between different instances of the shell

# Ignore interactive commands from history
export HISTORY_IGNORE="(ls|pwd|exit|cd ..|clear|c)"
