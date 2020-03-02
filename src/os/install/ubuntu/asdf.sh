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
    install_package "ASDF - curl" "curl"
    install_package "ASDF - bison" "bison"
    install_package "ASDF - libreadline-dev" "libreadline-dev"
    install_package "ASDF - libncurses-dev" "libncurses-dev"
    install_package "ASDF - libssl-dev" "libssl-dev"
    install_package "ASDF - libyaml-dev" "libyaml-dev"
    install_package "ASDF - libxslt-dev" "libxslt-dev"
    install_package "ASDF - libffi-dev" "libffi-dev"
    install_package "ASDF - libtool" "libtool"
    install_package "ASDF - unixodbc-dev" "unixodbc-dev"
    install_package "ASDF - unzip" "unzip"
    install_package "ASDF - build-essential" "build-essential"
    install_package "ASDF - gettext" "gettext"
    install_package "ASDF - libcurl4-openssl-dev" "libcurl4-openssl-dev"
    install_package "ASDF - libedit-dev" "libedit-dev"
    install_package "ASDF - libicu-dev" "libicu-dev"
    install_package "ASDF - libjpeg-dev" "libjpeg-dev"
    install_package "ASDF - libmysqlclient-dev" "libmysqlclient-dev"
    install_package "ASDF - libpng-dev" "libpng-dev"
    install_package "ASDF - libpq-dev" "libpq-dev"
    install_package "ASDF - libxml2-dev" "libxml2-dev"
    install_package "ASDF - libzip-dev" "libzip-dev"
    install_package "ASDF - openssl" "openssl"
    install_package "ASDF - pkg-config" "pkg-config"
    install_package "ASDF - libsqlite3-dev" "libsqlite3-dev"
    install_package "ASDF - libfreetype6-dev" "libfreetype6-dev"
    install_package "ASDF - libjpeg62-turbo-dev" "libjpeg62-turbo-dev"
    install_package "ASDF - libmcrypt-dev" "libmcrypt-dev"
    install_package "ASDF - zlib1g-dev" "zlib1g-dev"
    install_package "ASDF - libonig-dev" "libonig-dev"
    install_package "ASDF - graphviz" "graphviz"
}

main
