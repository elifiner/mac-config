# environment
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/Users/eli/bin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/MacOS/bin/
export PATH=$PATH:/Applications/Scala/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/heroku/bin
export PATH=$PATH:/Applications/android-sdk-macosx/platform-tools
export CLICOLOR=yes
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "[%s]")\$ '
export LANG=en_US.UTF-8
# if you override DYLD_LIBRARY_PATH you can't sudo
# http://stackoverflow.com/a/12073374/15109
# export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/mysql/lib/"
# export DYLD_FALLBACK_LIBRARY_PATH=/Applications/Postgres.app/Contents/MacOS/lib:$DYLD_LIBRARY_PATH

# aliases
alias l='ls -F'
alias ll='ls -lFA'
alias e='subl'
alias profile='vim ~/.bash_profile && source ~/.bash_profile && echo profile reloaded'
alias vimrc='vim ~/.vimrc'
alias gt=gitter
alias gsu='git submodule update --init --recursive'
alias glg='git lg'
alias gs='git status'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias chromex='open -a Google\ Chrome --args --disable-web-security'
alias tkill='kill `ps -Aopid,command | termenu | cut -f1 -d" "`'
alias textedit='open -a TextEdit'
alias nexus='/Applications/Android/sdk/tools/emulator -avd nexus'
alias grep='grep --color=auto'
alias top='top -ocpu'
alias youtube-dl='youtube-dl -x --audio-format mp3'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport'
alias hosts='sudo vim /etc/hosts'
alias sysfab='fab -f ~/source/system-fabric/fabfile.py'
alias venv='source venv/bin/activate'
alias mkvenv='virtualenv venv --prompt="($(basename `pwd`))" && source venv/bin/activate'
alias mkvenv3='virtualenv-3.4 venv3 --prompt="($(basename `pwd`)-py3)" && source venv3/bin/activate'
alias venv3='source venv3/bin/activate'
alias gam='python ~/Applications/GAM/gam.py'
alias gam-spring='cp ~/Applications/GAM/oauth2.txt.spring ~/Applications/GAM/oauth2.txt'
alias gam-parallel='cp ~/Applications/GAM/oauth2.txt.parallel ~/Applications/GAM/oauth2.txt'
alias showterm='showterm -e $SHELL -l'

# arrows completion
bind '"\e[B": history-search-forward'
bind '"\e[A": history-search-backward'

# git prompt
source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

### Added by the Heroku Toolbelt
