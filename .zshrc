source ~/.bash_profile

eval "$(direnv hook zsh)"

bindkey "^[b" backward-word
bindkey "^[f" forward-word
bindkey "^R" history-incremental-search-backward

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

. /usr/local/etc/profile.d/z.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/divyendusingh/Documents/zoid/k2/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/divyendusingh/Documents/zoid/k2/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/divyendusingh/Documents/zoid/k2/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/divyendusingh/Documents/zoid/k2/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/divyendusingh/Documents/zoid/k2/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/divyendusingh/Documents/zoid/k2/node_modules/tabtab/.completions/slss.zsh
