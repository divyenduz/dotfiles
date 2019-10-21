echo "Loading .bashrc"
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/divyendusingh/.config/yarn/global/node_modules/tabtab/.completions/serverless.bash ] && . /Users/divyendusingh/.config/yarn/global/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/divyendusingh/.config/yarn/global/node_modules/tabtab/.completions/sls.bash ] && . /Users/divyendusingh/.config/yarn/global/node_modules/tabtab/.completions/sls.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/divyendusingh/Documents/projects/zoid/footyboy/node_modules/tabtab/.completions/slss.bash ] && . /Users/divyendusingh/Documents/projects/zoid/footyboy/node_modules/tabtab/.completions/slss.bash

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
