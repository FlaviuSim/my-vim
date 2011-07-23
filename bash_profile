# vi mode
set -o vi

EC2_HOME=~/.ec2
export PATH=$PATH:/Users/closedbracket/Scripts
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=~/.ec2/pk-DZLWCVMJCRPPSBQ3PITNUZI365SZM77D.pem
export EC2_CERT=~/.ec2/cert-DZLWCVMJCRPPSBQ3PITNUZI365SZM77D.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

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


#git shortcuts
alias g='git'

#rails shortcuts
alias r='rails'

#postgres data variable
export PGDATA=/usr/local/pgsql/data

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

#default editor
export EDITOR=mvim
