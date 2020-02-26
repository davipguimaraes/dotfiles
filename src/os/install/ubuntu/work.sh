
cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"


print_in_purple "\n   Work\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

if ! package_is_installed "sublime-text-installer"; then

    add_key "https://download.sublimetext.com/sublimehq-pub.gpg " \
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

cat ../../../vscode/extensions.list | tr \\n \\0 | xargs -0 -n 1 code --install-extension
echo "Extensions VSCode imported successfully!"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_package "Filizilla" "filezilla"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_snap "Spotify" "spotify"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_snap "Slack" "slack" "--classic"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_package "MySql" "mysql-server"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_package "Apache" "apache2"
install_package "PHP - plugins" "libapache2-mod-php php-mcrypt php-mysql php-common php-curl php-mcrypt php-mysql php-xdebug php-xml php7.0 php7.0-cli php7.0-common php7.0-curl php7.0-json php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-opcache php7.0-readline php7.0-xml"


