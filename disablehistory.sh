# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

#!/bin/bash
# Disable python history and bash history.
ln -sf '/dev/null' $HOME'/.bash_history'
ln -sf '/dev/null' $HOME'/.python_history'
