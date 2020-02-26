
cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

if ! package_is_installed "flat-remix-gnome"; then

    add_ppa "daniruiz/flat-remix" \
        || print_error "Flat remix (add PPA)"

    update &> /dev/null \
        || print_error "Flat remix (resync package index files)"

fi

install_package "Theme - Flat remix" "flat-remix-gnome"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

if ! package_is_installed "adapta-gtk-theme"; then

    add_ppa "tista/adapta" \
        || print_error "Flat remix (add PPA)"

    update &> /dev/null \
        || print_error "Flat remix (resync package index files)"

fi

install_package "Theme - Adapta" "adapta-gtk-theme"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_package "Gnome Tweak Tool" "gnome-tweak-tool"
