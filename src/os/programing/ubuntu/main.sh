#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "../../install/ubuntu/utils.sh"
execute "ls ../../install/ubuntu/";
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

# ./asdf
# ./php
# ./editor

# ./cleanup.sh
