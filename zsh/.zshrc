# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="norm"
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gs="git status"
alias gc="git commit"
alias gr="git checkout"
alias ga="git add"
alias gl="git lola"
alias shipit="git push origin master"
alias pr="git stash && git pull origin master --rebase && git stash pop"

# switch between dcs
# Usage: `kc 96`
alias kc='kubectl config use-context '

# set default namespace for other commands
# Usage: `kn wix-public`
alias kn='kubectl config set-context --current --namespace '

# get pods by keyword in current namespace
# Usage: `kgp wix-public-war`
alias kgp='kubectl get pods -o wide | grep '

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew node scala mvn lein zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export JAVA_HOME=$(/usr/libexec/java_home)
export NODE_HOME=/usr/local/bin
export ANDROID_HOME=/usr/local/opt/android-sdk
export MAVEN_OPTS="-Xms1024m -Xmx4096m -XX:PermSize=1024m"
export HOMEBREW_GITHUB_API_TOKEN=c019801d8e8348970b85e7eee779b726899da943
export GOPATH=/usr/local/bin
export docker_repository_cache=~/dev/work/bazel/cache/docker
export mysql_repository_cache=~/dev/work/bazel/cache/mysql
export mongo_repository_cache=~/dev/work/bazel/cache/mongo

alias ubuntu-up="VBoxManage startvm ubuntu --type headless"
alias ubuntu-ssh="ssh -p 3022 amitayh@127.0.0.1"
alias ubuntu-shutdown="VBoxManage controlvm ubuntu poweroff"

wix-ssh() {
  ssh -p41278 "$1.wixpress.com"
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"

# zinc -scala-home /usr/local/Cellar/scala/2.11.7 -port 3030 -start
eval $(thefuck --alias)

cdf() {
  target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
  if [ "$target" != "" ]; then
    cd "$target"; pwd
  else
    echo 'No Finder window found' >&2
  fi
}

# export NVM_DIR="/Users/amitayh/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

gcode() {
  code=`oathtool --totp -b "OQZHUURPGNDDS6SM"`
  terminal-notifier -title "Google Auth Code" -message $code
  echo $code | pbcopy
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/amitayh/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/amitayh/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/amitayh/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/amitayh/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/amitayh/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/amitayh/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/amitayh/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/amitayh/Desktop/google-cloud-sdk/completion.zsh.inc'; fi

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/amitayh/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/amitayh/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
source /Users/amitayh/.bazelenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/amitayh/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/amitayh/miniconda/etc/profile.d/conda.sh" ]; then
        . "/Users/amitayh/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/amitayh/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

