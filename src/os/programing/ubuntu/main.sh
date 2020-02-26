#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./asdf_plugins.sh
./php.sh
./editor.sh

./cleanup.sh
