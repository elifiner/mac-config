# environment
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/Users/eli/bin
export PATH=$PATH:/Applications/android-sdk-macosx/platform-tools
export PATH=$PATH:$HOME/.composer/vendor/bin
export CLICOLOR=yes
export PS1_SHORT='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1 "[%.8s]")\$ '
export PS1_LONG='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "[%s]")\$ '
export PS1=$PS1_LONG
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export SLACK_TOKEN=xoxp-2351601660-64236240630-68668303525-c6524664a6
export LESS="-iMFXRS"
export BLACKFIRE_CLIENT_ID="2e381a7b-b8da-429f-8833-92a3a7a48347"
export BLACKFIRE_CLIENT_TOKEN="dfa023422a7f178d4eefeaddc366cebade66264828f4ffbfaae36616b3af15af"
export BLACKFIRE_SERVER_ID="363dc839-369b-4bbc-9abe-d401b5950d2a"
export BLACKFIRE_SERVER_TOKEN="87b7db868631d2c6812ff848dcdd1d17ebcd27d6020a012398eb3966456694d9"


# aliases
alias l='ls -F'
alias ll='ls -lFA'
alias e=code
alias p='ping -i0.2 8.8.8.8'
alias profile='vim ~/.bash_profile && source ~/.bash_profile && echo profile reloaded'
alias vimrc='vim ~/.vimrc'
alias gt='~/source/gitter/venv/bin/python ~/source/gitter/gitter'
alias glg='git lg'
alias gs='git status'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias grep='grep --color=auto'
alias youtube-dl='youtube-dl -i -o "%(title)s.%(ext)s"'
alias youtube-dl-mp3='youtube-dl -i -o "%(title)s.%(ext)s" -x --audio-format mp3'
alias airport='sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport'
alias hosts='sudo vim /etc/hosts'
alias venv='source venv/bin/activate'
alias mkvenv='virtualenv venv -p python3 --prompt="($(basename `pwd`))" && source venv/bin/activate'
alias showterm='showterm -e $SHELL -l'
alias sudo='sudo -H'
alias axel='axel -a'
alias dc='docker-compose'
alias rg='cd ~/source/retreatguru/programs'
alias password='python3 -c "import os; print(os.urandom(16).hex())"'
alias dev='PATH="$PATH:./:../:../../:../../../:../../../../" dev'
alias ev='PATH="$PATH:./:../:../../:../../../:../../../../" dev'
alias docker-stats='docker stats --format "table {{.Name}}\t{{.Container}}\t{{.CPUPerc}}\t{{.MemUsage}}"'
alias blackfire='blackfire --samples=1'
alias prompt_long='PS1=$PS1_LONG'
alias prompt_short='PS1=$PS1_SHORT'

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/eli/google-cloud-sdk/path.bash.inc' ]; then source '/Users/eli/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/eli/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/eli/google-cloud-sdk/completion.bash.inc'; fi
