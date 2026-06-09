#!/usr/bin/env zsh
#################################
# command aliases manager
#################################

# clear
alias c='clear'

# reload zshrc
alias rc="source ${HOME}/.zshrc"

# change directory
alias ..='cd ../'
alias ...='cd ../../'

# lsd: https://github.com/Peltoche/lsd
safe-alias 'ls' 'lsd'

# rclone: https://rclone.org/
if has-command 'rclone'; then
  alias rcgui='rclone gui --user=1 --pass=1 --addr=http://localhost:9988'
fi

# chezmoi: https://github.com/twpayne/chezmoi
# safe-alias 'moi' 'chezmoi'
if has-command 'chezmoi'; then
  alias zmoi='chezmoi'
  alias zmoia='chezmoi apply'
  alias zmoic='chezmoi cd'
  alias zmoid='chezmoi diff'
  alias zmoie="cd ${HOME}/.local/share/chezmoi && nvim ."
fi

# fastfetch
# https://github.com/fastfetch-cli/fastfetch
safe-alias 'ff' 'fastfetch'

# lazygit: https://github.com/jesseduffield/lazygit
safe-alias 'lg' 'lazygit'

# static web server
# https://github.com/vercel/serve
# https://github.com/vitejs/vite
# https://github.com/svenstaro/miniserve
# https://github.com/TheWaWaR/simple-http-server
function sws() {
  if has-command simple-http-server; then
    simple-http-server . -p 3000
  elif has-command miniserve; then
    miniserve . -p 3000
  elif has-command serve; then
    serve . -p 3000
  elif has-command vite; then
    vite . -p 3000
  else
    printf "no static web server found, please install one of the following:\n"
    printf "\t https://github.com/TheWaWaR/simple-http-server\n"
    printf "\t https://github.com/vercel/serve\n"
    printf "\t https://github.com/vitejs/vite\n"
    printf "\t https://github.com/svenstaro/miniserve\n"
  fi
}

# lazysql: https://github.com/jorgerojas26/lazysql
# dbhub: https://github.com/danvergara/dblab
function tuidbc() {
  if has-command lazysql; then
    lazysql
  elif has-command dblab; then
    dblab
  elif has-command sqlit; then
    sqlit
  else
    printf "not found tui databse client, please install one of the following:\n"
    printf "\t https://github.com/jorgerojas26/lazysql\n"
    printf "\t https://github.com/danvergara/dblab\n"
    printf "\t https://github.com/Maxteabag/sqlit\n"
  fi
}

# docker & compose
# https://www.docker.com/
if has-command 'docker'; then
  alias d='docker'
  alias dc='docker compose'
fi

# pnpm: https://pnpm.io/
if has-command 'pnpm'; then
  alias pi='pnpm install'
  alias pa='pnpm approve-builds'
  alias pr='pnpm remove'
  alias pu='pnpm update'
  alias pU='pnpm self-update'
  alias pd='pnpm run dev'
  alias ps='pnpm run start'
  alias pt='pnpm run test'
  alias pb='pnpm run build'
  alias pm='pnpm run mock'
fi

# bun: https://bun.sh/
if has-command 'bun'; then
  alias bd='bun run dev'
  alias bs='bun run start'
  alias bt='bun run test'
  alias bb='bun run build'
  alias bm='bun run mock'
fi

# https://github.com/denoland/deno
if has-command 'deno'; then
  alias dd='deno run dev'
  alias ds='deno run start'
  alias dt='deno run test'
  alias db='deno run build'
  alias dm='deno run mock'
fi

# cargo: https://rustwiki.org/zh-CN/cargo/
if has-command 'cargo'; then
  alias cr='cargo run'
  alias ct='cargo test'
  alias cb='cargo build --release'
fi

# just: https://just.systems/man/zh/%E8%AF%B4%E6%98%8E.html
if has-command 'just'; then
  alias j='just'
  alias jd='just dev'
  alias js='just start'
  alias jt='just test'
  alias jr='just run'
  alias jb='just build'
  alias jm='just mock'
fi
