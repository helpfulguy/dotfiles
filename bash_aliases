alias c='clear'
alias h='cd ~'

alias ls='ls --color -Fh'
alias ll='ls --color -lh'
alias la='ls --color -A'
alias lla='ls --color -lAh'

alias reload='~/.dotfiles/install'
alias cap='bundle exe cap'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

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

# Enable local customizations
if [ -f ~/.bash_aliases.local ]; then
    source ~/.bash_aliases.local
fi

