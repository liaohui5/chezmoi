#!/usr/bin/env zsh

VMWARE_VM_DIR="$HOME/.vbox"
VMWARE_VM_EXT=".vmwarevm"

# alias
alias vmls='vmrun list'

# selected vm .vmx path
vmx_path=""

# pick vmx_path using fzf
function pick-vmx-use-fzf() {
  local prompt_title="$1"
  # 在指定目录下查找 .vmwarevm 文件，排除可能存在的临时文件
  vmx_path=$(find "$VMWARE_VM_DIR" -name "*${VMWARE_VM_EXT}" 2>/dev/null | fzf --reverse --prompt="${prompt_title}> ")
}

# pick vmx_path using fzf
function pick-running-vmx-use-fzf() {
  local prompt_title="$1"
  vmx_path=$(vmrun list | tail -n +2 | fzf --reverse --prompt="${prompt_title}> ")
}

# start vm in background (headless)
function vm-start() {
  pick-vmx-use-fzf "select vm to start (headless)"
  if [[ -z "$vmx_path" ]]; then
    echo "Error: No VM selected"
    return 1
  fi
  vmrun start "$vmx_path" nogui
}

# halt vm by vmx_path
function vm-stop() {
  pick-running-vmx-use-fzf "select running vm to stop"
  if [[ -z "$vmx_path" ]]; then
    echo "Error: No VM selected or no VMs running"
    return 1
  fi
  vmrun stop "$vmx_path" trysoft
}

# make vm snapshot by vmx_path
function vm-snapshot() {
  pick-vmx-use-fzf "select vm to make snapshot"
  if [[ -z "$vmx_path" ]]; then
    echo "Error: No VM selected"
    return 1
  fi

  # input snapshot name
  echo "please input snapshot name:"
  read -r snapshot_name

  if [[ -z "$snapshot_name" ]]; then
    echo "snapshot name cannot be empty"
    return 1
  fi

  # input snapshot description
  echo "please input snapshot description:"
  read -r snapshot_desc

  vmrun snapshot "$vmx_path" "$snapshot_name"

  if [[ -n "$snapshot_desc" ]]; then
    echo "Note: vmrun does not support saving snapshot descriptions. Description ignored."
  fi
  echo "Snapshot '$snapshot_name' created successfully."
}
