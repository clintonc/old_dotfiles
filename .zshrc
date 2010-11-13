# A good source: http://zsh.sourceforge.net/Guide/zshguide.html

# Here are some fun and interesting builtins, with specialized version.
#   typeset (printing and setting parameters, dynamical scope)
#     declare
#     export
#     float
#     functions
#     integer
#     local
#     readonly
#   fc (manipulating history)
#     history
#     r
#
# Other interesting things:
#   path is an array, PATH is a colon-separated list.

# Handy constant
float -r pi=3.14159265358979
float -r e=2.718281828459045

# Set the prompt (zshmisc)
PS1='%B(%h) %m%#%b '
RPS1=\(%20\<...\<%~\)

# Miscellaneous options
setopt AUTO_CD
setopt AUTO_PUSHD
setopt CORRECT
setopt PUSHD_IGNORE_DUPS
unsetopt LIST_BEEP
setopt LIST_PACKED
setopt LIST_TYPES
setopt AUTO_MENU

# Saving history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

# Let's make things colorful
zmodload zsh/complist

export CLICOLOR=

# The following lines were added by compinstall

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/Users/clintonc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
