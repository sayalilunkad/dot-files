#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Theme
autoload -Uz promptinit
  promptinit
  prompt giddie

# Customize to your needs...
alias c="clear"
alias eosc="osc -A https://api.opensuse.org co -c"
alias iosc="osc -A https://api.suse.de co -c"
