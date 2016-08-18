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
alias youtube-dl-mp3='youtube-dl -x --audio-format mp3'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport'
alias hosts='sudo vim /etc/hosts'
alias venv='source venv/bin/activate'
alias mkvenv='virtualenv venv -p python3 --prompt="($(basename `pwd`))" && source venv/bin/activate'
alias showterm='showterm -e $SHELL -l'
alias sudo='sudo -H'
alias axel='axel -a'
alias jl='cd ~/source/parallel/flame/client/jlambda'
alias rbt-flame="rbt post --repository flame"
alias rbg-vagrant='f() { cd ~/source/retreatguru/rbg-vagrant; vagrant $@; }; f'
alias short_prompt='export PS1=$PS1_SHORT'
alias long_prompt='export PS1=$PS1_LONG'
alias dc='docker-compose'

# set up port forwarding
function fwd {
    [ $2 ] || { echo "usage: fwd <host> <port>"; return 1; }
    pkill autossh
    autossh -M 20000 -N -f $1 -L $2:localhost:$2
}

# run flame on a server
function flame {
    [ $1 ] || { echo "usage: flame <host> <nodes>"; return 1; }
    HOST=$1
    shift
    NODES=$1
    shift
    ssh -t $HOST -L 8080:localhost:8080 "
        cd ~/source/flame
        git log -1
        sleep 3
        make
        run/flame.py -r $NODES --mngr-port 8080 --keep-media --profile $HOST-ib task adm_reset $*
    "
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
