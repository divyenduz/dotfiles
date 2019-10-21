echo "Loading .profile, remember z, browsh, bat"
# PS1='\u [\W]$ '
PS1='%n [%1~]$ '

alias vim=nvim
alias vi=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# . /Users/divyendusingh/Documents/software/z.sh

export ANDROID_HOME=/Users/divyendusingh/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/Users/divyendusingh/Documents/software/google-cloud-sdk/bin
export PATH=$PATH:/Users/divyendusingh/Documents/software
export PATH=$PATH:/Users/divyendusingh/Documents/software/nvim-osx64/bin

alias c='clear'

# Get the current git branch name
alias gbn='git rev-parse --abbrev-ref HEAD'

# Push current branch to origin
alias gpoc='git push origin $(gbn)'


alias ga='git add -A .'
alias gs='git status'
alias gd='git diff'

# Fast to type git commit -m "<message>"
git_commit() {
	git commit -m "$1"
}

alias gc=git_commit
alias gl='git log --graph --abbrev-commit --decorate --date=relative --all'

git_sync() {
	git checkout master && git pull origin master && git checkout $1 && git merge master
}
alias gsy=git_sync

alias tmux='tmux -u'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/divyendusingh/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/divyendusingh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/divyendusingh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/divyendusingh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

alias ll='ls -lrt'

export PATH="$HOME/.cargo/bin:$PATH"
