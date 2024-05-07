#!/bin/bash
# Script to add and load a launchctl plist file

# Copy the .plist file from your project folder to LaunchAgents
cp ./sleep_mac_server_launchctl.plist ~/Library/LaunchAgents/

# Load the .plist file
launchctl load ~/Library/LaunchAgents/sleep_mac_server_launchctl.plist

echo "LaunchCtl service added and loaded."
