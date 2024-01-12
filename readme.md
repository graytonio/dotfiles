# My Custom Dot Files

Repository of my custom configurations for various tools I use in my terminal. It will install any terminal tools and template the configuration for any desktop applications (They will need to be installed separately).

## Requirements

The only manual installation requirements is to ensure you have `git` and `ansible` installed on your machine.

### Ubuntu

```bash
sudo apt update && sudo apt install -y git ansible
```

### MacOS (TODO)

## Installing

```bash
git clone https://github.com/graytonio/dotfiles.git
cd dotfiles
ansible-playbook install.yml
```