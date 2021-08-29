# Java setting
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
# export _JAVA_OPTIONS="-Duser.language=en"

# Python setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="PYENV_ROOT/bin:$PATH"

# nodebrew setting
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# php setting
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"

# git
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@\h \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# The process of reading .bashrc from .bash_profile
test -r ~/.bashrc && . ~/.bashrc
