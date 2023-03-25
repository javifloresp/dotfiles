# Environment

![](./wallpaper/macos.png?raw=true)

# Dependencies

### Yabai

[yabai](https://github.com/koekeishiya/yabai "yabai") is a window management utility that is designed to work as an extension to the built-in window manager of macOS. yabai allows you to control your windows, spaces and displays freely using an intuitive command line interface and optionally set user-defined keyboard shortcuts using ↗ [skhd](https://github.com/koekeishiya/skhd "skhd") and other third-party software.

### skhd

[skhd](https://github.com/koekeishiya/skhd "skhd") is a simple hotkey daemon for macOS that focuses on responsiveness and performance. Hotkeys are defined in a text file through a simple DSL. skhd is able to hotload its config file, meaning that hotkeys can be edited and updated live while skhd is running.

### Übersicht

[Übersicht](https://github.com/felixhageloh/uebersicht "Übersicht") lets you run system commands and display their output on your desktop in little containers, called widgets. Widgets are written using HTML5.

### Simple bar

[simple-bar](https://github.com/Jean-Tinland/simple-bar "simple-bar") is a yabai status bar widget for Übersicht inspired by nibar, yabar.

### LazyVim

[LazyVim](https://www.lazyvim.org/ "LazyVim") LazyVim is a Neovim setup powered by 💤 lazy.nvim to make it easy to customize and extend your config.

### Terminal

[Iterm2](https://iterm2.com/ "Iterm2")

## Configs files

```bash
  git clone git@github.com:javifloresp/dotfiles.git ~/config
  chmod +x ~/.config/yabai/.yabairc
  chmod +x ~/.config/skhd/.skhdrc
  ln -s  ~/.config/skhd/.skhdrc ~/.skhdrc
  ln -s  ~/.config/yabai/.yabairc ~/.yabairc
  brew services restart yabai
  brew services restart skhd
```

## Theme Solarized dark

Theme color base from https://ethanschoonover.com/solarized/

## Background image

Image https://wall.alphacoders.com/big.php?i=1033740
