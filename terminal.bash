#!/bin/bash

# Install
sudo apt install -y terminator

# Keybord Shortcut
gsettings set org.gnome.desktop.default-applications.terminal exec "terminator"

# Config
mkdir -p ~/.config
cat << 'EOF' >~/.config/terminator/config
[global_config]
  window_state = fullscreen
  borderless = True
[keybindings]
  split_horiz = <Primary><Shift>h
  split_vert = <Primary><Shift>j
  next_tab = <Primary>n
  prev_tab = <Primary>p
  hide_window = twosuperior
[profiles]
  [[default]]
    cursor_color = "#aaaaaa"
    show_titlebar = False
[layouts]
  [[default]]
    [[[window0]]]
      type = Window
      parent = ""
    [[[child1]]]
      type = Terminal
      parent = window0
[plugins]
EOF
