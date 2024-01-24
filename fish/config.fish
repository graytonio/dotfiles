# Only execute this file once per shell.
set -q __fish_home_manager_config_sourced; and exit
set -g __fish_home_manager_config_sourced 1

set -U fish_greeting ""

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.pyenv/bin
fish_add_path $HOME/go/bin
fish_add_path /opt/homebrew/bin

source ~/.config/fish/alias.fish