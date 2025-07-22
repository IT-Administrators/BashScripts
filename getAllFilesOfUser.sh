# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname> <username> <DIRECTORY>

#!/bin/bash

# ----DESCRIPTION
# Get all files of the specified user in the specified DIRECTORY.
# ----END

CURRENTUSER="$1"
DIRECTORY="$2"

# Check if user was specified otherwise use current user.
# -z checks for empty variable (0).
if [ -z "$1" ];
    then CURRENTUSER=$(whoami)
fi
# Check if DIRECTORY was specified otherwise use current.
if [ -z "$2" ];
    then DIRECTORY=$(pwd)
fi

# Check if specified DIRECTORY is path. 
if [ -d $DIRECTORY ]; 
    then find $DIRECTORY -user $CURRENTUSER -print 2>/dev/null
    else find $CURRENTUSER -user $DIRECTORY -print 2>/dev/null
fi