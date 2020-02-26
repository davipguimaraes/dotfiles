#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "../../install/ubuntu/utils.sh"


print_in_purple "\n   Code Editors\n\n"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

if ! package_is_installed "sublime-text-installer"; then

    add_key "https://download.sublimetext.com/sublimehq-pub.gpg" \
        || print_error "Sublime text (add key)"

    add_to_source_list "https://download.sublimetext.com/ apt/stable/" "sublime-text.list" \
        || print_error "Sublime text (add to package resource list)"

    update &> /dev/null \
        || print_error "Sublime text (resync package index files)"

fi

install_package "" "apt-transport-https"
install_package "Sublime text" "sublime-text"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_snap "VSCode" "code" "--classic"

execute "cat ../../../../vscode/extensions.list | tr \\n \\0 | xargs -0 -n 1 code --install-extension" "Extensions VSCode"
