## introduction

neovim config based [LazyVim](https://github.com/LazyVim/LazyVim) for myself.

## quick start

```sh
# backup your neovim config
mv ~/.config/nvim  ~/.config/nvim-backup

# clone my config
git clone https://github.com/liaohui5/nvim.git ~/.config/nvim
```

## preview

![preview](https://raw.githubusercontent.com/liaohui5/images/main/images/images202408190231855.png)

## !! be careful !!

some action may fail to execution, so, `must be execute by manual`

If you don't want to them, you can disabled them, and skip the step

- install [cmp-tabnine](https://github.com/tzachar/cmp-tabnine) local server

```sh
cd ~/.local/share/nvim/lazy/cmp-tabnine
chmod +x ./install
./install
```

- install [markdown-preview](https://github.com/iamcco/markdown-preview.nvim) dependences

```sh
cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app
npm install # please install node.js first
```
