#!/bin/bash

# CLI_config.bash

# Howto: append the following lines to .bashrc:
#   #[PM]
#   if [ -f ~/config/CLI_config.sh ]; then
#   	source ~/config/CLI_config.sh
#   fi

#echo "Custom Bash configuration"

# Aliases
alias c='clear'
alias 'cd..'='cd ..'
alias ls='ls --color=auto --group-directories-first'
alias l='ls -CF'
alias la='ls --almost-all'
alias ll='ls -g --classify --time-style=long-iso --human-readable --no-group'
alias lla='ll --almost-all'
alias topu='top -u $USER'
alias cc=clang++

alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# --- Prompts

# dir> 
alias pr0="export PS1='\[\033[0;34m\]\W\[\033[00m\]> '"
# path> 
alias pr1="export PS1='\[\033[0;34m\]\w\[\033[00m\]> '"
# user:path> 
alias pr2='export PS1="\[\033[1;30m\]\u\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]> "'
# user:dir:n_childs> 
alias pr3='export PS1="\[\033[1;30m\]\u\[\033[0m\]:\[\033[0;34m\]\W\[\033[0m\]:\j> "'
# user@domain:dir> 
alias pr4='export PS1="\[\e[1;30m\]\u@\h\[\e[0;37m\]:\[\e[0;34m\]\W\[\033[0m\]> "'

# Default prompt:
pr0

# --- Title bar:
# Relative path on the title bar
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Current directory on the title bar
# PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'


alias custom_commands='more ~/config/cli_custom.help'
alias bash_commands='more ~/config/cli.help'

# Language
export LANGUAGE=en_GB:en
export LANG=en_GB.UTF-8

# Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Default compiler - done by `SYS_config.sh`
#if [ -f ~/config/set-clang.sh ]; then
#	source ~/config/set-clang.sh
#fi
#if [ -f ~/config/set-gcc.sh ]; then
#	source ~/config/set-gcc.sh
#fi


#----------------------------
#[PM] - Pietro Mele 2007-2019
