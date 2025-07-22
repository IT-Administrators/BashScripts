# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

# ----DESCRIPTION
# This script checks if the specified user exists in the system.
# ----END

#!/bin/bash

# Check if user specified otherwise set to default.
CURRENTUSER=${1:-$(whoami)}

grep "^$CURRENTUSER" /etc/passwd