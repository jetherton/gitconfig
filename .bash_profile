export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
export ANDROID_HOME=/Users/johnetherton/workspace/android-sdk-macosx
export AVD_NAME=Gingerbread-LDPI

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export PATH=$PATH:~/scripts:~/workspace/android-sdk-macosx/tools:~/workspace/android-sdk-macosx/platform-tools:~/workspace/infer/infer/bin
export ios_repo=/Users/johnetherton/workspace/NeXgen-iOS
export android_repo=/Users/johnetherton/workspace/NeXgen-Android

# OPAM configuration
. /Users/johnetherton/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export PATH="/usr/local/sbin:$PATH"

source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


alias ll='ls -lah'
alias gs='git status'
alias gsync='git fetch | git checkout master | git pull origin master'
alias gp='git push'
alias gb='git branch'
alias gd='git diff'
alias gb='git branch'
alias gll="git log --graph"
alias gl="git log --pretty=format:\"%C(cyan) %cN - %C(auto)%h - %s - (%ar)\" --graph -8"
alias gf='git fetch'

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

CYAN="\[\033[0;36m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

PS1="$CYAN$HOME \w$YELLOW \$(parse_git_branch)$GREEN\\n$ "
eval "$(rbenv init -)"
