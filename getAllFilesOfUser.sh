# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname> <username> <directory>

#!/bin/bash

# ----DESCRIPTION
# Get all files of the specified user in the specified directory.
# ----END

currentUser="$1"
directory="$2"

# Check if user was specified otherwise use current user.
# -z checks for empty variable.
if [ -z "$1" ];
    then currentUser=$(whoami)
fi
# Check if directory was specified otherwise use current.
if [ -z "$2" ];
    then directory=$(pwd)
fi

# Check if specified directory is path. 
if [ -d $directory ]; 
    then find $directory -user $currentUser -print 2>/dev/null
    else find $currentUser -user $directory -print 2>/dev/null
fi