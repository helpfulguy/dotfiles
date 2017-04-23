alias ls='ls --color -GFh'
alias ll='ls --color -lh'
alias la='ls --color -A'
alias lla='ls --color -lAh'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

ssh.add() {
    ssh-add -t 86400 ~/.ssh/id_$1
}

