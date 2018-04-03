PS1='\u [\W]$ '
open_vscode(){
	/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron $1&
}

alias Code=open_vscode

export ANDROID_HOME=/Users/divyendusingh/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/Users/divyendusingh/Documents/software/google-cloud-sdk/bin

alias c='clear'
alias gpom='git pull origin master'

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

vm_core() {
	if [ "$*" == "" ]; then
		VBoxManage startvm ubuntu14 --type=headless	
	fi

	if [ "$1" == "start"  ]; then
		VBoxManage startvm ubuntu14 --type=headless
	fi

	if [ "$1" == "stop" ]; then
		VBoxManage controlvm ubuntu14 acpipowerbutton
	fi

	if [ "$1" == "ssh" ]; then
		ssh -p 2222 divyendu@localhost
	fi
}
alias vm=vm_core

alias nginx-conf='vi /usr/local/etc/nginx/nginx.conf'

adb_ping(){
	adb shell am start -a android.intent.action.VIEW -d "$1"
}
alias adb-ping=adb_ping

alias tmux='tmux -u'

# added by Anaconda3 4.1.1 installer
# export PATH="/Users/divyendusingh/anaconda/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/divyendusingh/Documents/projects/cocos2d-x-3.15/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/divyendusingh/Documents/projects
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/divyendusingh/Documents/projects/cocos2d-x-3.15/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/divyendusingh/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/divyendusingh/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/divyendusingh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/divyendusingh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/divyendusingh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

alias ll='ls -lrt'
