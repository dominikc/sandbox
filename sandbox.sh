#!/bin/bash
SANDBOX="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SANDBOX_ENV="production"
if [ -f "$HOME/.sandbox_env" ]; then
  SANDBOX_ENV=$(cat "$HOME/.sandbox_env")
fi

TMUX_COMMAND="tmux -2 -f $SANDBOX/tmux.conf"
SHELL_PATH=$(which zsh)

SANDBOX_ENV=$SANDBOX_ENV SHELL_PATH=$SHELL_PATH SANDBOX=$SANDBOX ZDOTDIR=$SANDBOX $TMUX_COMMAND $1 $2
