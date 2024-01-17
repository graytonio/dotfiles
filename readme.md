# My Custom Dot Files

Repository of my custom configurations for various tools I use in my terminal. It will install any terminal tools and template the configuration for any desktop applications (They will need to be installed separately).

## Installing

### Supported Environments

- [X] Ubuntu/Debian
- [X] MacOS

The installation script will install any needed dependencies and then run the dotfile installation ansible playbook.

It will link all configurations to the relevant directories and install any plugins so once it is done the environment will be ready to run.

```bash
curl -fsSL https://raw.githubusercontent.com/graytonio/dotfiles/main/install.sh | bash
```

## Tools

This playbook installs many tools I use on a daily basis in my terminal and configures them based on how I like them.

| Tool                                                  | Description                                                                | Config Documentation       |
| ----------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------- |
| [Fish](https://fishshell.com/)                        | Upgraded shell from bash with autocompletion and more easily configurable. | [Docs](docs/fish.md)       |
| [Tmux](https://github.com/tmux/tmux)                  | Terminal "window" manager. Allows tiling and tab terminals.                | [Docs](docs/tmux.md)       |
| [NeoVim](https://neovim.io/)                          | Terminal based text editor with rich plugin ecosystem.                     | [Docs](docs/neovim.md)     |
| [Starship](https://starship.rs/)                      | Configurable cross-shell prompt                                            | [Docs](docs/starship.md)   |
| [Eza](https://github.com/eza-community/eza/tree/main) | Rust based replacement for ls with improved visuals                        | [Docs](docs/rust-utils.md) |
| [Bat](https://github.com/sharkdp/bat)                 | Rust based replacement for cat with syntax highlights                      | [Docs](docs/rust-utils.md) |
| [RipGrep](https://github.com/BurntSushi/ripgrep)      | Rust based replacement for grep that can run 10x faster                    | [Docs](docs/rust-utils.md) |

### Programming Languages

This playbook also installs developer tools for a few languages that I use frequently.
| Language |
| -- |
| [Golang](https://go.dev/) |
| [Rust](https://www.rust-lang.org/) |

## Docker Image

As part of the CICD of this repository a docker image is built with all of these tools pre installed and configured which can be used as a ready to go shell environment if needed. It can be run as an interactive shell through the docker CLI

```bash
docker run -it --rm --pull always ghcr.io/graytonio/dotfiles:ubuntu
```