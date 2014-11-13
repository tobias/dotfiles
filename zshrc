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

source ~/.path

alias ls='ls -F --color'
alias j='jruby -S'
alias j19='jruby --1.9 -S'
alias jts='jruby -S target/rspec-runner.rb -f d'
alias jts19='jruby --1.9 -S target/rspec-runner.rb -f d'
alias eo='emacsclient -n'
alias k9='killall -9'
alias spom='find . -name pom.xml | xargs grep '

alias nb='notify-send "Build Successful"'
alias fb='mvn clean -Pdocs,integ && mvn install -Pdocs,integ,ci && nb'
alias fb19='mvn clean -Pdocs,integ && mvn install -P19,docs,integ,ci && nb'
alias mci='mvn clean && mvn install -Dmaven.test.skip && nb'
alias mcit='mvn clean && mvn install && nb'

alias tb='cd ~/work/torquebox/torquebox/'
alias im='cd ~/work/immutant/immutant/'
alias tbenv='source ~/.tbenv'
alias imenv='source ~/.imenv'
alias clearenv='unset IMMUTANT_HOME TORQUEBOX_HOME JBOSS_HOME'
alias emacspreso='EMACS_PRESENTATION_MODE=1 emacs'
alias jruby-env='source ~/.jruby-env'
alias open=xdg-open
alias yi='sudo yum install -y'

if [ -f "$HOME/.java.env" ]; then
   #source "$HOME/.java.env";
fi

#rvm use system
