#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

unsetopt auto_name_dirs

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

export PATH=~/bin:/usr/local/bin:${PATH}

export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=128m'

alias ls='ls -F'
alias j='jruby -S'
alias j19='jruby --1.9 -S'
alias jts='jruby -S target/rspec-runner.rb -f d'
alias jts19='jruby --1.9 -S target/rspec-runner.rb -f d'
alias eo='emacsclient -n'
alias k9='killall -9'
alias spom='find . -name pom.xml | xargs grep '
alias nb='growlnotify -s -m "build finished"'
alias fb='mvn clean -Pdocs,integ && mvn install -Pdocs,integ,ci && nb'
alias fb19='mvn clean -Pdocs,integ && mvn install -P19,docs,integ,ci && nb'
alias tb='cd ~/work/torquebox/torquebox/'
alias im='cd ~/work/immutant/immutant/'
alias tbenv='source ~/.tbenv'

if [ -f "$HOME/.java.env" ]; then
   source "$HOME/.java.env";
fi

#rvm use system
