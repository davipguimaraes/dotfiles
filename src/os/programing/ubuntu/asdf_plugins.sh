#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "../../install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_asdf_plugin() {
    declare -r EXTRA_ARGUMENTS="$3"
    declare -r PACKAGE="$2"
    declare -r PACKAGE_READABLE_NAME="$1"

    print_in_green "$PACKAGE_READABLE_NAME"
    execute \
        "asdf plugin-add $PACKAGE $EXTRA_ARGUMENTS"

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

    print_in_purple "\n   asdf plugins \n\n"

    install_asdf_plugin "asdf-vm/nodejs" "nodejs" "https://github.com/asdf-vm/asdf-nodejs.git"
    execute "bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring"
    install_asdf_add_version "node@12.16.1" "nodejs" "12.16.1"

    install_asdf_plugin "asdf-community/php" "php" "https://github.com/asdf-community/asdf-php.git"
    install_asdf_add_version "php@7.4.2" "php" "7.4.2" "PHP_WITHOUT_PEAR=yes"

    install_asdf_plugin "halcyon/asdf-java" "java" "https://github.com/halcyon/asdf-java.git"
    install_asdf_add_version "java@8" "java" "adopt-openjdk-8u242-b08_openj9-0.18.1"
}

main
