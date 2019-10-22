source ~/.bash_profile

bindkey "^[b" backward-word
bindkey "^[f" forward-word
bindkey "^R" history-incremental-search-backward

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

. /usr/local/etc/profile.d/z.sh
