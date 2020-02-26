
cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

if ! package_is_installed "sublime-text-installer"; then

    add_ppa "webupd8team/sublime-text-3" \
        || print_error "Sublime text (add PPA)"

    update &> /dev/null \
        || print_error "Sublime text (resync package index files)"

fi

install_package "Sublime text" "sublime-text-installer"


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

install_snap "Slack" "slack"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_package "MySql" "mysql-server"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_package "Apache" "apache2"
install_package "PHP - plugins" "libapache2-mod-php php-mcrypt php-mysql php-common php-curl php-mcrypt php-mysql php-xdebug php-xml php7.0 php7.0-cli php7.0-common php7.0-curl php7.0-json php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-opcache php7.0-readline php7.0-xml"


