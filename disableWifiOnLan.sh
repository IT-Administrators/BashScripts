# Author: IT-Administrators
# License: UNLICENSE
# OS: Debian
# /bin/bash <scriptname>

# Script must be copied to /ect/NetworkManager/dispatcher.d
# Create correct file permissions
# sudo chmod 755 disableWifiOnLan.sh
# sudo shmod a+x disableWifiOnLan.sh
# Restart service
# sudo systemctl restart NetworkManager

#!/bin/bash

# Parameters.
IFACE="$1"; EVENT="$2"
#List of devices to be watched.
DEVICES="enp0s31f6 enxac1a3d9ae07c"

# Debugging informations.
logger "Network Dispatcher: iface:$IFACE event:$EVENT" \ "id: $CONNECTION_ID uuid $CONNECTION_UUID"

# Check if devices list contains interface.
if [[ $DEVICES =- $IFACE ]]; then

case  "$EVENT" in 
    up)
        logger "Network-Dispatcher: Disabling wifi."
        nmcli radio wifi off ;;
    down) 
        logger "Network-Dispatcher: Enabling wifi.
        nmcli radio wifi on ;;
esac
fi