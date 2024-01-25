# Fish Shell

I like to use fish as my shell environment as I find it much easier to work with over bash with features like autocomplete and better config management.

## Paths

I manage all my paths in the main `config.fish` files and it ensures any other packages are loaded correctly when they are installed. Since there is litte impact with loading a path that does not exist I keep the `/opt/homebrew/bin` in all configs to simplify deployment.

## Aliases

All base aliases are configured in the `alias.fish` file these do things like replace the GNU utilities with the [rust replacements](rust-utils.md). All other aliases that come from other components are loaded into the `conf.d/` directory.

## Fisher Plugins

I utilize fisher as my fish plugin manager. I only have one plugin at the moment which is `nvm` for managing node js environments.