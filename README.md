## 介绍

这是个人开发环境配置文件集合，使用 [chezmoi](https://www.chezmoi.io/) 进行管理和同步

## 🖥️终端与Shell

### [alacritty/](alacritty/)

- GPU加速的终端仿真器配置
- 字体: Maple Mono NF CN (Light, 18pt)
- 默认Shell: fish

### [wezterm/](wezterm/)

- 现代Lua配置的终端仿真器
- 完整的自定义快捷键、标签栏、会话管理
- 字体: [Maple Mono NF CN (Light, 18pt)](https://github.com/subframe7536/maple-font)
- [keybindings.lua](wezterm/keybindings.lua) - 快捷键配置
- [tabline.lua](wezterm/tabline.lua) - 标签栏定制
- [resurrect.lua](wezterm/resurrect.lua) - 会话恢复

### [fish/](fish/)

Fish shell 完整配置

- [config.fish](fish/config.fish) - Shell入口配置，按键绑定、辅助函数
- [aliases.fish](fish/aliases.fish) - 命令别名和自定义函数
- [homebrew.fish](fish/homebrew.fish) - Homebrew相关配置
- [proxy.fish](fish/proxy.fish) - 代理配置
- [softwares.fish](fish/softwares.fish) - 软件相关配置
- [ssh_manager.fish](fish/ssh_manager.fish) - SSH管理工具
- [vbox.fish](fish/vbox.fish) - VirtualBox相关配置
- [zellij.fish](fish/zellij.fish) - Zellij终端多路复用器配置
- [conf.d/](fish/conf.d/) - Fish自启动脚本目录
- [functions/](fish/functions/) - Fish自定义函数目录

## 🛠️编辑器

### [nvim/](nvim/)

Neovim IDE配置（基于[LazyVim](https://github.com/LazyVim/LazyVim)）

- [init.lua](nvim/init.lua) - 主配置入口
- [lazy-lock.json](nvim/lazy-lock.json) - 插件版本锁定
- 核心配置目录：
  - [lua/config/](nvim/lua/config/) - 基础配置（自动命令、快捷键、选项等）
  - [lua/plugins/](nvim/lua/plugins/) - 插件配置（AI、LSP、美化等）
  - [lua/helpers/](nvim/lua/helpers/) - 辅助函数
  - [lua/client/](nvim/lua/client/) - 客户端配置（neovide）
- [snippets/](nvim/snippets/) - 代码片段集合

### [zed/](zed/)

Zed 编辑器配置

- [keymap.json](zed/keymap.json) - 快捷键配置
- [settings.json](zed/private_settings.json) - 编辑器设置
- [tasks.json](zed/tasks.json) - 任务配置
- [snippets/](zed/snippets/) - 代码片段
- [conversations/](zed/conversations/) - AI对话历史

## ⚙️ Shell美化

### [starship/](starship/)

Shell提示符美化配置

- 基于[starship](https://starship.rs/)
- 自定义格式化输出，集成git分支、目录等信息

## 🚀 效率工具

### [skhd/](skhd/)

macOS快捷键管理（仅在macOS可用）

- [skhdrc](skhd/skhdrc) - 主快捷键配置
- [skhdrc-for-yabai](skhd/skhdrc-for-yabai) - Yabai窗口管理器集成配置

### [yazi/](yazi/)

现代文件管理器配置

- [yazi.toml](yazi/yazi.toml) - 主配置（显示隐藏文件、排序方式等）
- [keymap.toml](yazi/keymap.toml) - 快捷键映射

## 📦 开发环境管理

### [mise/](mise/)

多语言版本管理器（前身为asdf-vm）

- [config.toml](mise/config.toml) - Node.js、Python等工具版本配置

## 🚀 快速开始

### 前置要求

- 操作系统: macOS
- [chezmoi](https://www.chezmoi.io/) - 配置文件管理工具
- [fish shell](https://fishshell.com/) - 命令行shell
- [Neovim](https://neovim.io/) - 文本编辑器

### 安装配置

```bash
# 使用chezmoi初始化
chezmoi init <repository-url>
chezmoi apply

# 或手动同步（需要先备份原有配置）
chezmoi cd
```

## 📄 许可证

个人配置文件集合，可自由参考和修改。
