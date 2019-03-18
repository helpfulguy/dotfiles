alias h='cd ~'
alias c='clear'

# **dot** - dotfiles
#------------------------------------------------
alias dot.reload='~/.dotfiles/install'

# **ls** - list directory contents
#------------------------------------------------
alias ls='ls --color -Fh'
alias ll='ls --color -lh'
alias la='ls --color -A'
alias lla='ls --color -lAh'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# **grep** - print lines matching pattern
#------------------------------------------------
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# **apt** - package management
#------------------------------------------------
alias apt.update='sudo apt-get update'
alias apt.upgrade='sudo apt-get upgrade'
alias apt.remove='sudo apt autoremove'

# **ssh** - remote login
#------------------------------------------------
alias ssh.list='ssh-add -l'
alias ssh.lock='ssh-add -x'
alias ssh.unlock='ssh-add -X'
alias ssh.rmall='ssh-add -D'

ssh.add() {
    ssh-add -t 86400 ~/.ssh/id_$1
}

ssh.rm() {
    ssh-add -d ~/.ssh/id_$1
}

ssh.osxadd() {
    ssh-add -K -t 86400 ~/.ssh/id_$1
}

ssh.osxrm() {
    ssh-add -K -d ~/.ssh/id_$1
}

# **Local Customizations**
#------------------------------------------------
if [ -f ~/.bash_aliases.local ]; then
    source ~/.bash_aliases.local
fi

