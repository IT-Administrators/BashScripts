# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

#!/bin/bash

# ----DESCRIPTION
# Get the size of the current directory.
# ----END

DIR="$1"
# Check if direcotry provided.
if [ -z "$1" ];
    then DIR=$(pwd)
fi

du $DIR -sh