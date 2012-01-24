# vi mode
set -o vi

EC2_HOME=~/.ec2
export PATH=$PATH:/Users/closedbracket/Scripts
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=~/.ec2/pk-DZLWCVMJCRPPSBQ3PITNUZI365SZM77D.pem
export EC2_CERT=~/.ec2/cert-DZLWCVMJCRPPSBQ3PITNUZI365SZM77D.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

export S3_KEY=AKIAJYQVJ3HNKSVMIO4A
export S3_SECRET=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

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
# export PATH

export PYTHONPATH=/Users/closedbracket/Dropbox/projects:$PYTHONPATH

# test -r /sw/bin/init.sh && . /sw/bin/init.sh

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

#This is for the "mate" command to open textmate
export PATH=$PATH:/Users/closedbracket/bin

# Alias for VIM
alias v='vim'
# alias m='mvim'
# This is in order to not get segfaults because of RVM and Vim 
m()
{
  (unset GEM_PATH GEM_HOME; command mvim "$@")
}
# alias gvimdiff='vimdiff'
function gvim { /Applications/MacVim.app/Contents/MacOS/Vim -g $*; }
function mvim { /Applications/MacVim.app/Contents/MacOS/Vim -g $*; }

# Virtualenv wrapper stuff:
export WORKON_HOME=~/envs
source /usr/local/bin/virtualenvwrapper.sh

# bash and unix command lines customize
alias ls='ls -GA'
alias ll='ls -lGA'

# a prompt that has colors and git branch
source ~/git-completion.bash
PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\w\[`tput sgr0`\]$(__git_ps1 " (%s)"): '
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME\/Dropbox\/projects/~}\007"'

#git shortcuts
alias g='git'
alias gs='git status'
alias gd='git diff'
alias gp='git push && git push heroku master && heroku run rake db:migrate'
alias gpp='git push && git push github master'
alias rap='bundle exec rake assets:precompile'

#rails shortcuts
alias r='rails'
alias bi='bundle install'
alias rdm='rake db:migrate && rake db:test:prepare'
alias beg='bundle exec guard'
#
#postgres data variable
export PGDATA=/usr/local/pgsql/data

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

#default editor
export EDITOR=mvim

#VLC
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

#couchdb
alias restart_couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start_couch='/usr/bin/sudo launchctl load -w /Library/LaunchDaemons/org.apache.couchdb.plist'
alias stop_couch='/usr/bin/sudo launchctl unload /Library/LaunchDaemons/org.apache.couchdb.plist'

#stupid rbenv -> no match for rvm
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# less line numbers (for man pages)
export LESS='-RS#3NM~g'
