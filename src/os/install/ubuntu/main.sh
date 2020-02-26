#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./build-essentials.sh

./git.sh
./asdf.sh

./browsers.sh
./work.sh

./compression_tools.sh
./image_tools.sh
./misc.sh
./misc_tools.sh

./appearance.sh
./../npm.sh

./tmux.sh
./../vim.sh

./cleanup.sh

# ./../nvm.sh
