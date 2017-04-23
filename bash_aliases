alias ls='ls -GFh'
alias ll='ls -lAh'
alias la='ls -A'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

ssh.add() {
    ssh-add -t 86400 ~/.ssh/id_$1
}

