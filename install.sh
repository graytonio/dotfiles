#!/bin/bash

install_location="$HOME/dotfiles"

# Clone repo to installation location
clone_repo() {
    if cd $install_location; then git pull; else git clone https://github.com/graytonio/dotfiles.git $HOME/dotfiles; fi
}

# Install dependencies for debian based systems
install_deps_deb() {
    sudo apt install -y git ansible curl apt-transport-https
}

# Install depedencies for macos based systems
install_deps_macos() {
    brew install git ansible
}

# Determine the distro
# Here are some known OSes:
# - On Mac: Darwin
# - On FreeBSD or GhostBSD: FreeBSD
# - On Fedora: fedora
# - On Ubuntu: ubuntu
# - On Raspbian: raspbian
function get_distro() {
    if [[ -f /etc/os-release ]]
    then
        # On Linux systems
        source /etc/os-release
        echo $ID
    else
        # On systems other than Linux (e.g. Mac or FreeBSD)
        uname
    fi
}

function get_tags() {
  tags=""

  if ["$CI" == "true" ]; then
    echo ""
    return 0
  fi

   while true; do
        read -p "Do you want to install desktop apps? (y/N) " yn
        case $yn in 
            [yY][eE][sS]|[yY]) tags="${tags},desktop";
                break;;
            * ) break;;
        esac
    done

    echo $tags
}

# Detects os family 
install_deps() {
    case $(get_distro) in
        Darwin)
            install_deps_macos
            ;;
        ubuntu | linuxmint)
            install_deps_deb
            ;;
        *)
            echo "Unsupported platform detected $(get_distro). Exiting"
            exit -1
        ;;
    esac    
}

install_configs() {
    ansible-galaxy collection install community.general
    ansible-playbook $install_location/install.yml -K --tags "$(get_tags)"
}

run_install() {
    echo "Installing Platform Dependencies"
    install_deps

    echo "Cloning Config Repository"
    clone_repo

    echo "Executing Installation Playbook"
    install_configs
}

run_install
