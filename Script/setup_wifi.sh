#!/bin/bash

# Create or modify the wpa_supplicant.conf file
cat <<EOF > /etc/wpa_supplicant.conf
ctrl_interface=/var/run/wpa_supplicant
ap_scan=1
update_config=1

network={
        ssid="YOUR_WIFI_SSID"
        psk="YOUR_WIFI_PASSWORD"
        key_mgmt=WPA-PSK
}
EOF

# Kill any running instances of wpa_supplicant
killall -9 wpa_supplicant 

# Start wpa_supplicant with the specified configuration
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf 

# Obtain an IP address using udhcpc
udhcpc -i wlan0
