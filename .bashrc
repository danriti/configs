#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

#PS1='[\u@\h \W]\$ '
PS1="[\[$Color_Off\]\u\[$BPurple\]@\[$Color_Off\]\h \[$BBlue\]\W\[$Color_Off\]]\$ "

# Aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -al'

alias term='urxvt -fn -*-terminus-*-*-*-*-12-* +sb'
alias termb='urxvt -fn -*-terminus-*-*-*-*-14-* +sb'
alias termr='urxvt -fn -*-terminus-*-*-*-*-14-* +sb -rv'
alias clip="xclip -i -selection clipboard"

export TERM=screen-256color
export TERMINAL=urxvt

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
