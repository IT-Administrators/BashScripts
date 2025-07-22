# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

# ----DESCRIPTION
# Get the size of the current directory.
# ----END

#!/bin/bash

DIR="$1"
# Check if direcotry provided.
if [ -z "$1" ];
    then DIR=$(pwd)
fi

du $DIR -sh