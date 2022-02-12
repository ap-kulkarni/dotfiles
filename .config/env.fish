# Fish shell does not support export command so adding function for it
function export
    if [ $argv ] 
        set var (echo $argv | cut -f1 -d=)
        set val (echo $argv | cut -f2 -d=)
        set -g -x $var $val
    else
        echo 'export var=value'
    end
end

# To avoid warning when connected to SSH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

set JAVA_HOME (/usr/libexec/java_home -v 1.8)
set PATH $PATH $HOME/scripts /usr/local/bin

alias vim="nvim"
alias sshi="ssh -o 'StrictHostKeyChecking=no' -o 'UserKnownHostsFile=/dev/null'"
alias envconfig="vim $HOME/.config/env.fish"
alias mvnh="mvn clean install -DskipTests -V -T 1C --settings $HOME/.m2/hytrust.xml"
alias mvnho="mvnh --offline"
alias ping="ping -c 4"
alias config="/usr/bin/git --git-dir=$HOME/.bare_cfg/ --work-tree=$HOME"

# Disable Homebrew analytics and auto update before install
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

# Configure Starship prompt
starship init fish | source

