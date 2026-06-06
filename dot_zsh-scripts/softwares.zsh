#!/usr/bin/env zsh

# nvim & vim & vi EDITOR
# https://github.com/neovim/neovim
if has-command 'nvim'; then
  export EDITOR='nvim'
elif has-command 'vim'; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi

# zoxide
# https://github.com/ajeetdsouza/zoxide
if has-command 'zoxide'; then
  eval "$(zoxide init zsh)"
fi

# fzf
# https://github.com/junegunn/fzf
if has-command 'fzf'; then
  eval "$(fzf --zsh)"
fi

# rustup
# https://rustup.rs/
safe-source "$HOME/.cargo/env"

# starship
# https://starship.rs/zh-CN/
if has-command 'starship'; then
  eval "$(starship init zsh)"
  export STARSHIP_CONFIG="${HOME}/.config/starship/config.toml"
fi

# yazi
# https://yazi-rs.github.io/
if has-command 'yazi'; then
  function fm() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
      builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
  }
fi

# mise
if [[ -f "$HOME/.cargo/bin/mise" ]]; then
  eval "$(~/.cargo/bin/mise activate zsh)"
fi

# goproxy
if has-command 'go'; then
  export GOPROXY="https://goproxy.cn/,https://mirrors.aliyun.com/goproxy/,https://goproxy.bj.bcebos.com,direct"
fi

# uv
# https://docs.astral.sh/uv/getting-started
if has-command 'uv'; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# pnpm
# https://pnpm.io/
if has-command 'pnpm'; then
  export PNPM_HOME="$HOME/.pnpm_store"
  append-path $PNPM_HOME
  append-path "${PNPM_HOME}/bin"
fi
