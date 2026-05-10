## 📃 Introduction

this is my dotfiles, managed by [chezmoi](https://www.chezmoi.io/)

## 🚀 Quick Start

```bash
# init chezmoi by github repository
chezmoi init https://github.com/liaohui5/chezmoi

# apply the config files
chezmoi apply
```

## 🚧 Warning

1. chezmoi config file must be exists
2. `~/.config/chezmoi/chezmoi.toml` example:

```toml
[data]
czg_openai_key="mock-czg-ai-api-key-string"
npmrc_auth_token="custom-verdaccio-server-auth-token"
```

## 🔑 license

[MIT](https://en.wikipedia.org/wiki/MIT_License)
