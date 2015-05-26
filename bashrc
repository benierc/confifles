#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#NO BEEP
xset -b

alias ls='ls --color=auto'
#default
#PS1='[\u@\h \W]\$ '
########PROMPT##########
TIME=`date +%H:%M`
WHITE='\[\e[1;30m\]'
RED="\[\e[1;31m\]"
GREEN='\[\e[1;32m\]'
YELLOW='\[\e[1;33m\]'
BLUE='\[\e[1;34m\]'
PURPLE='\[\e[1;35m\]'
KK='\[\e[1;36m\]'
USER='\u'
CURRENT_PATH='\w'
COLOR_OFF='\[\e[m\]'
PROMPT_CHARACTER='\$'
NAME='\W'

git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
prompt_command(){
    PS1="${RED}${GREEN}[${USER}@${YELLOW}${NAME}${COLOR_OFF}${BLUE}${COLOR_OFF}${GREEN}]${RED}$(git_branch)${GREEN}${PROMPT_CHARACTER}${COLOR_OFF}${KK}"
    unset IFS
}
PROMPT_COMMAND=prompt_command

sh $HOME/.screenlayout/classic.sh

#completion sudo

#alias
alias l='ls'
alias ll='ls -lh'
alias lla='ll -a'

#official export 
export EDITOR=vim
export PATH=$PATH:/home/clement/scriptbin/bin
#personnal export
export DOWNLOADS=$HOME/Downloads
export TOSEND=$HOME/Tosend
export FREENIVI=$HOME/work/freenivi/projet/freenivi/work/freenivi-os
export EFL=$HOME/work/efl

#astuces
ASTUCES=$HOME/astuces
RAC_CONSOLE=$ASTUCES/raccourcis_console.txt
alias rac_console='cat $RAC_CONSOLE'
