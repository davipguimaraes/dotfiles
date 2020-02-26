#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../install/ubuntu/utils.sh" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./asdf
./php
./editor

./cleanup.sh
