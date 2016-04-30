# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

########## below is jack define ##########################
alias yi='yum install'
alias ll='ls -lh'
alias la='ls -a'
#Below is for vm sync time
alias synctime='clock -s --hctosys'
synctime 
#For wide LCD display,hard to ditinguishi dark blue
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
#for python quick
alias p='python'
