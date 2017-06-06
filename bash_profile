# environment
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/Users/eli/bin
export PATH=$PATH:/Applications/android-sdk-macosx/platform-tools
export CLICOLOR=yes
export PS1_SHORT='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1 "[%s]")\$ '
export PS1_LONG='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "[%s]")\$ '
export PS1=$PS1_LONG
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export SLACK_TOKEN=xoxp-2351601660-64236240630-68668303525-c6524664a6
export LESS="-iMFXRS"


# aliases
alias l='ls -F'
alias ll='ls -lFA'
alias e='"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"'
alias profile='vim ~/.bash_profile && source ~/.bash_profile && echo profile reloaded'
alias vimrc='vim ~/.vimrc'
alias gt=~/source/gitter/gitter
alias glg='git lg'
alias gs='git status'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias grep='grep --color=auto'
alias top='top -ocpu'
alias youtube-dl='youtube-dl -i -o "%(title)s.%(ext)s"'
alias youtube-dl-mp3='youtube-dl -i -o "%(title)s.%(ext)s" -x --audio-format mp3'
alias airport='sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport'
alias hosts='sudo vim /etc/hosts'
alias venv='source venv/bin/activate'
alias mkvenv='virtualenv venv -p python3 --prompt="($(basename `pwd`))" && source venv/bin/activate'
alias showterm='showterm -e $SHELL -l'
alias sudo='sudo -H'
alias axel='axel -a'
alias jl='cd ~/source/parallel/flame/client/jlambda'
alias rbt-flame="rbt post --repository flame"
alias short_prompt='export PS1=$PS1_SHORT'
alias long_prompt='export PS1=$PS1_LONG'
alias dc='docker-compose'
alias selenium='java -Dwebdriver.chrome.driver=/opt/selenium/chromedriver -jar /opt/selenium/selenium-server-standalone-3.0.1.jar'
alias rg='cd ~/source/retreatguru/programs'
alias password='python3 -c "import os; print(os.urandom(16).hex())"'
alias dev='PATH="$PATH:./:../:../../:../../../:../../../../" dev'

# add log-like time to each line of input
function times {
    while read line; do
        echo `date "+%Y-%m-%d %H:%M:%S"` "$line"
    done
}

# arrows completion
bind '"\e[B": history-search-forward'
bind '"\e[A": history-search-backward'

# bash-completion
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# pyenv
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
