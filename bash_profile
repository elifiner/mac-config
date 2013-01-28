# environment
export PATH=/opt/local/bin:/opt/local/sbin:$PATH:/usr/local/git/bin
export CLICOLOR=yes
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "[%s]")\$ '

# aliases
alias l=ls
alias ll='ls -lFA'
alias e='subl -a'
alias profile='vim ~/.bash_profile && source ~/.bash_profile'
alias gt=gitter
alias gsu='git submodule update --init --recursive'

# arrows completion
bind '"\e[B": history-search-forward'
bind '"\e[A": history-search-backward'

# git command completion
source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh
source /etc/bash_completion.d/gitter-completion.bash
