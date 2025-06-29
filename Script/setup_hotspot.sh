#!/bin/bash

### Configuration Variables ###
WIFI_INTERFACE="wlan0"
ETH_INTERFACE="eth0"  # Change this if using another interface for internet sharing
HOTSPOT_SSID="luckfox"
HOTSPOT_PASS="123456789"
HOTSPOT_IP="192.168.1.1"
DHCP_RANGE="192.168.1.100,192.168.1.200,12h"
CHANNEL=6

### Ensure WiFi Interface is Up ###
ip link set $WIFI_INTERFACE up

### Assign Static IP to WiFi Interface ###
ifconfig $WIFI_INTERFACE $HOTSPOT_IP netmask 255.255.255.0

### Create hostapd Configuration File ###
cat > /etc/hostapd/hostapd.conf <<EOF
interface=$WIFI_INTERFACE
driver=nl80211
ssid=$HOTSPOT_SSID
hw_mode=g
channel=$CHANNEL
wmm_enabled=0
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0
wpa=2
wpa_passphrase=$HOTSPOT_PASS
wpa_key_mgmt=WPA-PSK
rsn_pairwise=CCMP
EOF

### Start hostapd ###
echo "Starting Hostapd..."
hostapd -B /etc/hostapd/hostapd.conf

### Create dnsmasq Configuration File ###
cat > /etc/dnsmasq.conf <<EOF
interface=$WIFI_INTERFACE
dhcp-range=$DHCP_RANGE
EOF

### Start dnsmasq ###
echo "Starting DHCP Server (dnsmasq)..."
dnsmasq

### Enable NAT for Internet Sharing (Optional) ###
echo "Enabling NAT..."
iptables -t nat -A POSTROUTING -o $ETH_INTERFACE -j MASQUERADE
echo 1 > /proc/sys/net/ipv4/ip_forward

### Print Success Message ###
echo "WiFi Hotspot '$HOTSPOT_SSID' is now active!"
