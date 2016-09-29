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
alias eo='emacsclient -n'
alias k9='killall -9'
alias spom='find . -name pom.xml | xargs grep '

alias tb='cd ~/work/torquebox/torquebox/'
alias im='cd ~/work/immutant/immutant/'
alias tbenv='source ~/.tbenv'
alias imenv='source ~/.imenv'
alias clearenv='unset IMMUTANT_HOME TORQUEBOX_HOME JBOSS_HOME'
alias emacspreso='EMACS_PRESENTATION_MODE=1 emacs'
alias jruby-env='source ~/.jruby-env'
alias j='jruby -S'
alias jbe='j bundle exec'
alias open=xdg-open
alias copy='xsel --clipboard --input'
alias yank='xsel --clipboard --output'
alias grep='grep --color=auto'

source ~/.local-env

export BOOT_JVM_OPTIONS="-client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xmx2g -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xverify:none"

export NVM_DIR="/home/tcrawley/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/tcrawley/.sdkman"
[[ -s "/home/tcrawley/.sdkman/bin/sdkman-init.sh" ]] && source "/home/tcrawley/.sdkman/bin/sdkman-init.sh"
