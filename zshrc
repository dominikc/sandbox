HISTFILE="$ZDOTDIR/.zhistory"
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

autoload -U colors && colors
ENV_PROMPT_COLOR="red"
[[ ! "$SANDBOX_ENV" == "staging" ]] || ENV_PROMPT_COLOR="yellow"
[[ ! "$SANDBOX_ENV" == "development" ]] || ENV_PROMPT_COLOR="green"

ENV_PROMPT="%{$fg[$ENV_PROMPT_COLOR]%}[$SANDBOX_ENV]%{$reset_color%}"
PROMPT="%0~ $ENV_PROMPT %% "
RPROMPT="%n@%m"

if hash rbenv 2>/dev/null; then
  eval "$(rbenv init -)"
fi

alias vim="vim -u $SANDBOX/vimrc"
alias svim="sudo vim -u $SANDBOX/vimrc"
alias be="bundle exec"
alias ack="$SANDBOX/ack"
alias ag="$SANDBOX/ack"
alias ll="ls -lh"
