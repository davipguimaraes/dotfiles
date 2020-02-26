#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_asdf() {

    execute \
        "git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.7.6" \
        "$1"
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   ASDF\n\n"
    install_asdf "ASDF v0.7.6"

    print_in_purple "\n   asdf dependencias \n\n"
    install_package "ASDF - automake" "automake"
    install_package "ASDF - autoconf" "autoconf"
    install_package "ASDF - libreadline-dev" "libreadline-dev"
    install_package "ASDF - libncurses-dev" "libncurses-dev"
    install_package "ASDF - libssl-dev" "libssl-dev"
    install_package "ASDF - libyaml-dev" "libyaml-dev"
    install_package "ASDF - libxslt-dev" "libxslt-dev"
    install_package "ASDF - libffi-dev" "libffi-dev"
    install_package "ASDF - libtool" "libtool"
    install_package "ASDF - unixodbc-dev" "unixodbc-dev"
    install_package "ASDF - unzip" "unzip"
    install_package "ASDF - curl" "curl"
}

main
