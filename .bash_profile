# Git completion bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Android config
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Composer
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Aliasses
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias ds="docker-compose exec -u 82 php sh"

alias composer="php -d memory_limit=-1 /usr/local/bin/composer"

alias pizza='curl -L http://git.io/pizzza'
alias pancakes='curl -L http://git.io/pancakes'
alias weather='curl http://wttr.in/'
