#!/bin/bash

# Update package lists
echo "==============================="
echo "Updating package lists..."
echo "==============================="
sudo apt update -y

# Install required dependencies
echo "==============================="
echo "Installing software-properties-common..."
echo "==============================="
sudo apt install -y software-properties-common

# Add Mosquitto PPA repository
echo "==============================="
echo "Adding Mosquitto PPA repository..."
echo "==============================="
sudo apt-add-repository -y ppa:mosquitto-dev/mosquitto-ppa

# Update package lists again after adding PPA
echo "==============================="
echo "Updating package lists again..."
echo "==============================="
sudo apt update -y

# Install Mosquitto broker
echo "==============================="
echo "Installing Mosquitto..."
echo "==============================="
sudo apt install -y mosquitto mosquitto-clients

# Enable Mosquitto service to start on boot
echo "==============================="
echo "Enabling Mosquitto to start on boot..."
echo "==============================="
sudo systemctl enable mosquitto

# Start Mosquitto service
echo "==============================="
echo "Starting Mosquitto service..."
echo "==============================="
sudo systemctl start mosquitto mosquitto-clients

# Verify installation
echo "==============================="
echo "Checking Mosquitto status..."
echo "==============================="
sudo systemctl status mosquitto --no-pager

# Configure Mosquitto to listen on port 1883 (optional)
echo "==============================="
echo "Configuring Mosquitto listener on port 1883..."
echo "==============================="
sudo bash -c 'echo -e "listener 1883\nallow_anonymous true" >> /etc/mosquitto/mosquitto.conf'

# Restart Mosquitto service to apply changes
echo "==============================="
echo "Restarting Mosquitto service..."
echo "==============================="
sudo systemctl restart mosquitto

# Get the device's IP address
IP_ADDRESS=$(hostname -I | awk '{print $1}')

echo "==============================="
echo "Mosquitto installation and configuration complete!"
echo "==============================="
echo "MQTT Broker is running!"
echo "IP Address: $IP_ADDRESS"
echo "Port: 1883"
echo "==============================="
