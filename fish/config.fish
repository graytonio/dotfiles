# Only execute this file once per shell.
set -q __fish_home_manager_config_sourced; and exit
set -g __fish_home_manager_config_sourced 1
set -U fish_greeting ""

set -Ux PYENV_ROOT $HOME/.pyenv

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.pyenv/bin
fish_add_path /usr/local/go/bin
fish_add_path $HOME/go/bin
fish_add_path /opt/homebrew/bin

starship init fish | source

source ~/.config/fish/alias.fish