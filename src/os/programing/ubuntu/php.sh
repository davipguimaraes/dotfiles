#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../install/ubuntu/utils.sh" \
    && . "../utils.sh"


print_in_purple "\n   Work web - PHP Mysql\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_package "MySql" "mysql-server"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

install_package "Apache" "apache2"
install_package "PHP - plugins" "libapache2-mod-php php-mcrypt php-mysql php-common php-curl php-mcrypt php-mysql php-xdebug php-xml php7.0 php7.0-cli php7.0-common php7.0-curl php7.0-json php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-opcache php7.0-readline php7.0-xml"
