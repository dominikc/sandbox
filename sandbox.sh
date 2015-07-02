#!/bin/bash
SANDBOX="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SANDBOX=$SANDBOX ZDOTDIR=$SANDBOX tmux -f $SANDBOX/tmux.conf
