#!/usr/bin/env zsh
#######################################################################
## ssh connection manager
## tssh: https://github.com/trzsz/trzsz-ssh
#######################################################################
function sshmgr() {
  # if sshs command exists, use it
  if has-command 'tssh'; then
    tssh
    return 0
  fi

  if ! has-command 'fzf'; then
    echo 'Error: Not found "fzf" command' >&2
    return 1
  fi

  # parse and select host with fzf
  local ssh_config="$HOME/.ssh/config"
  local host=$(grep -e "^Host " "$ssh_config" | awk '{print $2}' | fzf --reverse --prompt="Select SSH host> ")

  # handle cancel
  if [[ -z "$host" ]]; then
    echo "Selection cancelled" >&2
    return 1
  fi

  # connect to host
  ssh -v "$host"
}
