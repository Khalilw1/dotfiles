#If you come from bash you might have to change your $PATH. 
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/khalil/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

COMPLETION_WAITING_DOTS="true"

plugins=(sudo git history taskwarrior tmux tmuxinator zsh-autosuggestions zsh-completions zsh-syntax-highlighting)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

alias tmux="TERM=screen-256color-bce tmux"
alias python=python3
alias pip=pip3

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
