# generic mac
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/mysql/lib/

# BTRACE
export BTRACE_HOME=/Users/m.monteiro/btrace

### Fix 'clang: unknown argument' error after updating to Xcode 5.1
export ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future

# java and etc
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$FORGE_HOME/bin

# auth and etc
export DUKASCOPY_USER='XXX'
export DUKASCOPY_PASS='XXX'

export EC2_ACCESS_KEY='XXXX'
export EC2_SECRET_KEY='XXXX'
export EC2_URL='https://ec2.us-east-1.amazonaws.com'

# go
#[[ -s "$HOME/.govm/scripts/gvm" ]] && source "$HOME/.govm/scripts/gvm"
#export GOROOT="/Users/m.monteiro/.govm/gos/go1.2"
#export GOPATH="/Users/m.monteiro/.govm/pkgsets/go1.2/global"

# ruby

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
gemenv='bundle exec gem env gempath || gem env gempath'

eval "$(rbenv init -)"

# python

eval "$(pyenv init -)"
pyenv virtualenvwrapper

# git
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# docker
export DOCKER_HOST="tcp://$(boot2docker ip 2> /dev/null):2375"

# bash

export PATH=$JAVA_HOME/bin:/usr/local/bin:~/bin:$PATH

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
NO_COLOUR="\[\033[0m\]"

#PS1="$GREEN\u@machine$NO_COLOUR:\W:$RED\$(~/.rvm/bin/rvm-prompt i v g) \$(~/.govm/bin/gvm-prompt)$NO_COLOUR:$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
PS1=" $GREEN\u@machine$NO_COLOUR:\W:${RED}\$(rbenv version-name) ${CYAN}\$(pyenv version-name)$NO_COLOUR:$YELLOW\$(parse_git_branch)$NO_COLOUR `date +%H:%M:%S` \$ "

alias ppvalidate='puppet parser validate'
alias start-mysql-server='sudo /usr/local/mysql/support-files/mysql.server start'
alias stop-mysql-server='sudo /usr/local/mysql/support-files/mysql.server stop'
alias start-nginx='/usr/local/bin/nginx -c /Users/m.monteiro/nginx/nginx.config'
alias stop-nginx='kill $(ps aux | grep "bin/nginx" | grep -v grep | awk "{ print \$2}")'
alias be='bundle exec '
alias cap='be cap'

# The next line updates PATH for the Google Cloud SDK.
source '/Users/m.monteiro/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/m.monteiro/google-cloud-sdk/completion.bash.inc'
