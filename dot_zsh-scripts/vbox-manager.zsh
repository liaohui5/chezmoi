#!/usr/bin/env zsh

# alais
alias vbox-ls='VBoxManage list runningvms'

# safe alias
safe-alias 'vbox' 'VBoxManage'

# selected vm uuid
vmid=""

# pick vmid and set vmid variable
function pick-vmid-use-fzf() {
  local prompt_title="$1"
  vmid=$(VBoxManage list vms | fzf --reverse --prompt="${prompt_title}> " | awk -F"[{}]" '{print $2}')
}

# start vm in background
function vbox-start() {
  pick-vmid-use-fzf "select vm to start on background"
  if [[ -z "$vmid" ]]; then
    echo "Error: No VM selected"
    return 1
  fi
  VBoxManage startvm "$vmid" --type=headless
}

# halt vm by vimid
function vbox-stop() {
  pick-vmid-use-fzf "select vm to stop"
  if [[ -z "$vmid" ]]; then
    echo "Error: No VM selected"
    return 1
  fi
  VBoxManage controlvm "$vmid" poweroff
}

# make vm snapshot by vimid
function vbox-snapshot() {
  # select vm to make snapshot
  pick-vmid-use-fzf "select vm to make snapshot"
  if [[ -z "$vmid" ]]; then
    echo "Error: No VM selected"
    return 1
  fi

  # input snapshot name and description
  echo "please input snapshot name:"
  read -r snapshot_name

  if [[ -z "$snapshot_name" ]]; then
    echo "snapshot name cannot be empty"
    return 1
  fi

  # input snapshot description
  echo "please input snapshot description:"
  read -r snapshot_desc

  # make snapshot
  VBoxManage snapshot "$vmid" take "$snapshot_name" -description="$snapshot_desc"
}
