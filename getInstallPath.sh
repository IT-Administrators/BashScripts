# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

# ----DESCRIPTION
# Get the installation path of the specified software.
# Get the installation path of VSCode.
# /bin/bash getInstallPath.sh code
# ----END

#!/bin/bash
SW="$1"

whereis $SW