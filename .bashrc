######################################################################
#
#
#           ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
#           ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
#           ██████╔╝███████║███████╗███████║██████╔╝██║     
#           ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
#           ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
#           ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# Zum
######################################################################

# /etc/skel/.bashrc
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Prompt
PS1='\[\e[0;34m\][\[\e[0;34m\]\u\[\e[0;34m\]] \[\e[0;35m\]/\[\e[0;35m\]\W\[\e[0m\]]\[\e[0;37m\]\$ \[\e[0m\]'

# Date and time HIST
HISTSIZE=2000
HISTFILESIZE=2000
HISTCONTROL=ignoredups
HISTTIMEFORMAT="%F %T "
shopt -s histappend


# Random
alias tt="tt -showwpm -blockcursor -t 20 -highlight1 -n 25"

# Ssh

# vpn

# Manipulation
alias cp='cp -iv'
alias mv='mv -iv'

# Regular
alias vim='nvim'
alias cls='clear'
alias py="python"
alias bashrc="vim ~/.bashrc"
alias ytin="yt-dlp --format 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]'"
alias spot="python ~/Git/polybar-spotify/spotify_status.py -f '{song}' -t 15"

# Listing
alias ll='ls -a'
alias el="sbash && exa -l"
alias rgg="rg --files | rg"
alias ela="sbash && exa -la"
alias eda="sbash && exa -aD -l"
alias eta="sbash && exa -la --sort=type"
alias ls="ls -hN --color=auto --group-directories-first"

# Navigation
alias ccna="cd ~/Documents/Skole/It/CCNA/"
alias cdir="sbash && cd ~/Projects/C && ls"
alias rsdir="sbash && cd ~/Projects/Rust && ls"
alias mddir="sbash && cd ~/Projects/Markdown && ls"
alias tsdir="sbash && cd ~/Projects/TS && ls"
alias shdir="sbash && cd ~/Projects/Shell && ls"
alias pydir="sbash && cd ~/Projects/Python && ls"

# System Info
alias edmesg="dmesg --level=err,warn,crit,emerg"
alias cpu5="ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 5"
alias mem5="ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 5"
alias lsablk="lsblk --output name,type,fstype,size,fsavail,mountpoint"

# Gentoo
alias eqf='equery f'
alias equ='equery u'
alias eqh='equery h'
alias eqa='equery a'
alias eqb='equery b'
alias eql='equery l'
alias eqd='equery d'
alias eqg='equery g'
alias eqk='equery k'
alias eqm='equery m'
alias eqy='equery y'
alias eqs='equery s'
alias eqw='equery w'
alias eupd="sudo eix-sync"
alias eqi="equery list '*'"
alias ein="sudo emerge -avq"
alias eout="sudo emerge -Cav"
alias eupg="sudo emerge -uDNavq @world"
alias ewhat="eix -u --format '<installedversions:NAMEVERSION>'"

# My-fetch
clear
read -r min1 min5 min15 _ < /proc/loadavg
printf "\n\e[0;37m ----------------------------\n"
printf "\e[0;32m"" %s\n" "[MEMORY:  $(free -m -h | awk '/Mem/{print $3"/"$2}')]"
printf " [LOADAVG: %s]\n"  "$min1 $min5 $min15"
printf "\e[0;34m"" %s\n" "[KERNEL:  $(uname -r)]"
printf "\e[0;34m"" %s\n" "[DATE:    $(date +"%a %d. %b %H:%M")]"
printf "\e[0;37m ----------------------------\n"
printf "\n"

# Export
export TIMEFORMAT="[Finished in %Rs]"
export PATH=$PATH:/home/gentop/.spicetify
. "$HOME/.cargo/env"

# Source
alias sbash="source ~/.bashrc"
