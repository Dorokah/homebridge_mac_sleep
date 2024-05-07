#!/bin/bash
# Script to unload and remove a launchctl plist file

# Unload the .plist file
launchctl unload ~/Library/LaunchAgents/sleep_mac_server_launchctl.plist

# Remove the .plist file
rm ~/Library/LaunchAgents/sleep_mac_server_launchctl.plist

echo "LaunchCtl service removed."
