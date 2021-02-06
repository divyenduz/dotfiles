echo "Loading .bash_profile, remember tokei, fd, fselect, thefuck, rg, npkill, fx, dust, xsv, geokit"

kcc=$(kubectl config current-context)
echo "k8s context: $kcc"

if [ -n "$ZSH_VERSION" ]; then
  PS1='%n $ [%1~]$ '
else
  PS1='$ [\W]$ '
fi

vman() { vim <(man $1); }

alias ssh-pi='ssh pi@darth.pi'
alias ssh-retro='ssh pi@retro.pi'

removecontainers() {
  docker stop $(docker ps -aq)
  docker rm $(docker ps -aq)
}

armaggedon() {
  removecontainers
  docker network prune -f
  docker rmi -f $(docker images --filter dangling=true -qa)
  docker volume rm $(docker volume ls --filter dangling=true -q)
  docker rmi -f $(docker images -qa)
}

docker-wipe() {
  docker kill $(docker ps -aq)
  docker rm $(docker ps -aq)
}

export PATH="/Users/divyendusingh/.deno/bin:$PATH"
if [ -d "$HOME/Documents/software" ] ; then
  PATH="$PATH:$HOME/Documents/software"
fi

alias c='clear'
alias gpom='git pull origin master'

# Get the current git branch name
alias gbn='git rev-parse --abbrev-ref HEAD'

alias gh='cd $(git rev-parse --show-toplevel)'

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

# Fast to type git status && git diff
git_status_and_diff(){
	git status
	git diff
}
alias gsd=git_status_and_diff

git_sync() {
	git checkout master && git pull origin master && git checkout $1 && git merge master
}
alias gsy=git_sync

alias ls='exa'
alias ll='ls -lrt'
alias vi='nvim'
alias vim='nvim'

export EDITOR='vi'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
