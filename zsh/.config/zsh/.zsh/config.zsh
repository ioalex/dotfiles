# shellcheck shell=bash

# zshoptions
# Source: <https://zsh.sourceforge.io/Doc/Release/Options.html>

# Changing Directories
setopt AUTO_CD		                        # Automatically cd into typed directory.
setopt AUTO_PUSHD                         # Make cd push the old directory onto the directory stack.
setopt PUSHD_IGNORE_DUPS                  # Don't push multiple copies of the same directory to the stack.
setopt PUSHD_SILENT                       # Do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME                      # Have pushd without arguments act like `pushd ${HOME}`.

# Expansion and Globbing
setopt BRACE_CCL                          # Expand expressions ({a-z} {0-2}) in braces to a lexically ordered list of all the characters.
setopt NO_CASE_GLOB                       # Make globbing (filename generation) insensitive to case.
                                          # Needed for file modification glob modifiers with compinit
setopt EXTENDED_GLOB                      # Treat the '#', '~' and '^' characters as part of patterns for filename generation.
setopt GLOB_DOTS                          # Do not require a leading ‘.’ in a filename to be matched explicitly.
setopt NO_NOMATCH                         # Avoids "zsh: no matches found...".

# Input / Output
setopt CORRECT                            # Try to correct the spelling of commands.
setopt CORRECT_ALL                        # Try to correct the spelling of all arguments in a line.
setopt NO_FLOW_CONTROL                    # Disable output flow control via start/stop characters (usually assigned to ^S/^Q).
setopt INTERACTIVE_COMMENTS               # Enable comments in an interactive shell.

# Job Control
setopt NO_BG_NICE                         # Prevent background jobs being given a lower priority.
setopt NO_CHECK_JOBS                      # Prevent status report of jobs on shell exit.
setopt NO_HUP                             # Prevent SIGHUP to jobs on shell exit.
setopt LONG_LIST_JOBS                     # List jobs in verbose format by default.
setopt NOTIFY                             # Report the status of background jobs immediately, rather than waiting until just before printing a prompt.

# Prompting
setopt PROMPT_SUBST                       # Allow parameter expansion, command substitution and arithmetic expansion in prompts
setopt TRANSIENT_RPROMPT                  # Remove any right prompt from display when accepting a command line. This may be useful with terminals with other cut/paste methods.

# Scripts and Functions
setopt MULTIOS                            # Perform implicit tees or cats when multiple redirections are attempted.

# Shell Emulation
setopt NO_SH_WORD_SPLIT                   # Causes field splitting to be performed on unquoted parameter expansions - use zsh style word spliting.

# Zle
setopt NO_BEEP                            # Disable Beep on error in ZLE.
