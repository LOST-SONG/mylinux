# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias opt='cd /opt'
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi


alias c='clear'
alias et='exit'
alias l='ls'
alias la='ls -a'
alias ..="cd .."
alias ...="cd ../.."
alias ?='cd ~'

alias reload='source ~/.bashrc'
alias bashrc='vim ~/.bashrc && source ~/.bashrc'
alias bashpr='vim ~/.bash_profile && source ~/.bash_profile'
alias bashal='vim ~/.alias && source ~/.alias'

alias cl='cd /'

export PS1='[\u@\t \w]\\$ '
