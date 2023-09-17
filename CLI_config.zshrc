#!/bin/zsh

# CLI_config.zshrc

# Howto: append the following lines to .zshrc:
#   #[PM]
#   if [ -f ~/config/CLI_config.zshrc ]; then
#   	source ~/config/CLI_config.zshrc
#   fi

echo "Custom Zsh configuration"

# Aliases
alias c='clear'
alias 'cd..'='cd ..'
alias ls='ls --color=auto --group-directories-first -CF'
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
#? alias pr0="export PS1='\[\033[0;34m\]\W\[\033[00m\]> '"
# path> 
alias pr1="%~>"
# user:path> 
alias pr2="%n:%~>"
# user:dir:n_childs> 
#? alias pr3='export PS1="\[\033[1;30m\]\u\[\033[0m\]:\[\033[0;34m\]\W\[\033[0m\]:\j> "'
# user@domain:dir> 
alias pr4='export PS1="\[\e[1;30m\]\u@\h\[\e[0;37m\]:\[\e[0;34m\]\W\[\033[0m\]> "'
# user@domain:path> 
alias pr5="%n@%m:%~>"

# Default prompt:
#PROMPT=pr1

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
#[PM] - Pietro Mele 2007-2022
