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

install_asdf_plugin() {
    declare -r EXTRA_ARGUMENTS="$3"
    declare -r PACKAGE="$2"
    declare -r PACKAGE_READABLE_NAME="$1"

    execute \
        "asdf plugin-add $PACKAGE $EXTRA_ARGUMENTS" \
        "$PACKAGE_READABLE_NAME"

}
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_asdf_add_version() {
    declare -r EXTRA_ARGUMENTS="$4"
    declare -r VERSION="$3"
    declare -r PACKAGE="$2"
    declare -r PACKAGE_READABLE_NAME="$1"

    execute \
        "$EXTRA_ARGUMENTS asdf install $PACKAGE $VERSION" \
        "$PACKAGE_READABLE_NAME" \
        "asdf global $PACKAGE $VERSION"

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

    print_in_purple "\n   asdf plugins \n\n"

    install_asdf_plugin "asdf-community/php" "php" "https://github.com/asdf-community/asdf-php.git"
    install_asdf_add_version "php@7.4.2" "php" "7.4.2" "PHP_WITHOUT_PEAR=yes"

    install_asdf_plugin "asdf-vm/nodejs" "nodejs" "https://github.com/asdf-vm/asdf-nodejs.git"
    install_asdf_add_version "node@12.16.1" "nodejs" "12.16.1"

    install_asdf_plugin "halcyon/asdf-java" "java" "https://github.com/halcyon/asdf-java.git"
    install_asdf_add_version "java@8" "java" "adopt-openjdk-8u242-b08_openj9-0.18.1"

}

main
