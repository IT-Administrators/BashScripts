# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

# ----DESCRIPTION
# Disable python history and bash history.
# This script requires sudo privileges.
# ----END

#!/bin/bash
ln -sf '/dev/null' $HOME'/.bash_history'
ln -sf '/dev/null' $HOME'/.python_history'
