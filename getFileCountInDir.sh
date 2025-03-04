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

ls $DIR | wc -l
