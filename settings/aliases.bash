alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias find="sudo find"
alias ls="ls --almost-all --reverse --color=always --classify  --human-readable"
alias la="ls -lar"
alias ping="ping -c4"
alias ps='ps -Af'
alias apt-get="sudo apt-get"
alias synaptic="sudo synaptic"
alias apt-key="sudo apt-key"
alias apt="sudo apt"
alias dpkg="sudo dpkg"
alias echo="echo -e"

alias desdemona="cd ${HOME}/TheKadu/Desdemona"
alias otelo="cd ${HOME}/TheKadu/Otelo"
alias development="cd ${HOME}/Development"
alias kadu="cd ${HOME}/TheKadu"

function git_wip()
{
    date=$(date '+%Y-%m-%d %H:%M:%S')
    git commit -m "WIP: ${date}"
    git push
}
