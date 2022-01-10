#!/bin/bash

# Install
sudo apt install -y guake

# Keybord Shortcut
gsettings set org.gnome.desktop.default-applications.terminal exec "guake"

# Config
cat << 'EOF' >~/tmp/guakeConf
[general]
abbreviate-tab-names=false
compat-delete='delete-sequence'
display-n=0
gtk-prefer-dark-theme=true
gtk-theme-name='Yaru-dark'
history-size=1000
max-tab-name-length=100
mouse-display=false
open-tab-cwd=true
prompt-on-quit=true
quick-open-command-line='codium -g %(file_path)s:%(line_number)s'
quick-open-enable=true
restore-tabs-notify=true
restore-tabs-startup=true
save-tabs-when-changed=true
scroll-keystroke=true
start-fullscreen=true
tab-close-buttons=false
tab-ontop=true
use-default-font=true
use-popup=true
use-scrollbar=true
use-trayicon=true
window-halignment=0
window-height=100
window-losefocus=false
window-refocus=false
window-tabbar=true
window-width=100

[keybindings/global]
show-hide='Pause'

[keybindings/local]
focus-terminal-down='<Primary><Shift>l'
focus-terminal-left='<Primary><Shift>k'
focus-terminal-right='<Primary><Shift>m'
focus-terminal-up='<Primary><Shift>o'
move-terminal-split-down='disabled'
move-terminal-split-left='disabled'
move-terminal-split-right='disabled'
move-terminal-split-up='disabled'
new-tab-home='disabled'
split-tab-horizontal='<Primary><Shift>h'
split-tab-vertical='<Primary><Shift>j'

[style/background]
transparency=100

[style/font]
allow-bold=true
palette='#000000000000:#cccc00000000:#4e4e9a9a0606:#c4c4a0a00000:#34346565a4a4:#757550507b7b:#060698209a9a:#d3d3d7d7cfcf:#555557575353:#efef29292929:#8a8ae2e23434:#fcfce9e94f4f:#72729f9fcfcf:#adad7f7fa8a8:#3434e2e2e2e2:#eeeeeeeeecec:#ffffffffffff:#000000000000'
palette-name='Tango'
EOF
guake --restore-preferences /tmp/guakeConf