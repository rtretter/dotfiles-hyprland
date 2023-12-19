#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -la --color=auto'
alias nv='nvim'
alias vim='nvim'
alias nano='nvim'

PS1='\[$(tput setaf 14)\]\u\[$(tput setaf 15)\]@\[$(tput setaf 214)\]\h \[$(tput setaf 11)\]\w \[$(tput sgr0)\]$ '
# PS1='[\[\e[36m\]\u\[\e[m\] @ \[\e[33m\]\W\[\e[m\]]\\$ '
# PS1='[\u@\h \W]\$ '

export JDK_HOME=/usr/lib/jvm/java-21-openjdk
