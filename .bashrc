# Java setting
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export _JAVA_OPTIONS="-Duser.language=en"

# nodebrew setting
export PATH=$HOME/.nodebrew/current/bin:$PATH

# php setting
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"

# python setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# for bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# la,ll
alias la='la -la'
alias ll='ls -la'

# ls color
alias ls='ls -G'

# git alias
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias gst='git status'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gmm='git merge master'

# git ps1
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@\h \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
