# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

#!/bin/bash

# ----DESCRIPTION
# Get the fsize of the current directory.
# ----END

DIR="$1"

du $DIR -sh