# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

#!/bin/bash

# ----DESCRIPTION
# Get the filecount of the specified directory.
# ----END

# Input parameter
DIR="$1"

# Check if directory was specified otherwise use current.
if [ -z "$1" ];
    then DIR=$(pwd)
fi
# Include hidden files.
ls $DIR -la | wc -l
