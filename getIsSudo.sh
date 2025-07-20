# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

#!/bin/bash

# ----DESCRIPTION
# This file checks if the current user is sudo.
# ----END

# Check if current user is sudo.
is_sudo(){
    if [[ $(id -u) -ne 0 ]]
    then return 1
    fi
}