# Only execute this file once per shell.
set -q __fish_home_manager_config_sourced; and exit
set -g __fish_home_manager_config_sourced 1

set -U fish_greeting ""

status --is-interactive; and begin
    source ~/.config/fish/alias.fish
end

starship init fish | source
