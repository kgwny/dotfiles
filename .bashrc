# enable pyenv
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
