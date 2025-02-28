# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

# ----Description
# Install python module if not installed.
# By default pip and venv of are not installed on debian.
# Running the script without any parameter defaults to venv module installation.
# ----
#!/bin/bash

# Create varible to specify python module.
PYMOD="$1"

# Double brackets to use bash instead of single brackets for POSIX.
# Check if parameter was specified if not set it to venv.
if [[ -z "$1" ]]
then
    PYMOD="venv"
fi

# Test if module is installed by importing it.
python3 -c "import $PYMOD"
# Get install status.
status=$?
# Check install status.
if [[ $status -eq 0 ]]
then
    echo "Python module $PYMOD already installed."
else
    # Installing python module.
    echo "Installing python module $PYMOD."
    sudo apt-get install python3-$PYMOD
fi
