# environment
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/Users/eli/bin
export PATH=$PATH:/Applications/android-sdk-macosx/platform-tools
export PATH=$PATH:$HOME/.composer/vendor/bin
export CLICOLOR=yes
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1 "[%.8s]")\$ '
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LESS="-iMFXRS"
export BASH_SILENCE_DEPRECATION_WARNING=1

# aliases
alias l='ls -F'
alias ll='ls -lFA'
alias e=code
alias profile='vim ~/.bash_profile && source ~/.bash_profile && echo profile reloaded'
alias vimrc='vim ~/.vimrc'
alias gt=gitter
# alias gt='~/source/gitter/venv/bin/python ~/source/gitter/gitter'
alias glg='git lg'
alias gs='git status'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias grep='grep --color=auto'
alias hosts='sudo vim /etc/hosts'
alias venv='source venv/bin/activate'
alias mkvenv='virtualenv venv -p python3 --prompt="($(basename `pwd`))" && source venv/bin/activate'
alias sudo='sudo -H'
alias axel='axel -a'
alias password='python3 -c "import os; print(os.urandom(16).hex())"'

# arrows completion
bind '"\e[B": history-search-forward'
bind '"\e[A": history-search-backward'

# bash-completion
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
