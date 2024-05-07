# Homebridge Mac Sleep Trigger

# Overview

This project enables you to control the sleep functionality of a Mac from Homebridge, seamlessly integrating macOS with your HomeKit environment. It uses a Python HTTP server on the Mac, which listens for HomeKit commands via Homebridge, offering a safer and more secure alternative to SSH-based solutions.

## Motivation

The primary goal of this project is to enhance the integration of macOS systems with HomeKit, facilitating seamless control over Mac sleep functions directly from iOS devices. Utilizing an HTTP server heightens security by avoiding the need to manage SSH access, which could potentially expose the Mac to external threats. This setup confines commands to predefined HTTP endpoints, reducing the attack surface significantly compared to traditional SSH methods.

### Practical Benefits of HomeKit Integration

- Enhance Convenience: Control your Mac's sleep cycles from anywhere in your home or remotely.
- Save Energy: Ensure your Mac is not left running unnecessarily, reducing power consumption.
- Security: Quickly put your Mac to sleep to secure any sensitive open applications or data.
- Automate Routines: Tie Mac commands to other HomeKit-enabled devices and automations for a smarter home environment.

By deploying this Homebridge setup, you ensure a more secure, convenient, and energy-efficient interaction with your Mac, leveraging the full potential of smart home technology.

### Why Use an HTTP Server?
Employing an HTTP server for command execution is generally considered safer than using SSH for several reasons:

- Limited Access: The server restricts access to specific, predefined commands instead of a full shell environment.
- No Credential Management: It removes the necessity to manage SSH keys or passwords, simplifying security.
- Configurable Security: Provides the option to implement additional security measures such as IP whitelisting and HTTPS to safeguard command execution.

## Installation

### Setting Up the HTTP Server
1. Navigate to the server directory:
   ```bash
   cd homebridge_mac_sleep
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Run the server:
   ```bash
   bash start_server.bash
   ```

### Configuring Homebridge
Install the `homebridge-http-switch` and configure it with a stateless switch that sends an HTTP call to the HTTP server on the Mac. Here's an example configuration:
```json
   {
       "accessory": "HTTP-SWITCH",
       "name": "sleep my-mbp",
       "switchType": "stateless-reverse",
       "timeout": 1000,
       "offUrl": "http://YOUR-SERVER-IP:8000/sleep"
   }
   ```

## Setup Automatic Startup
Inside the `launchctl_scripts` directory, you will find everything needed for automatic startup.
Modify the `sleep_mac_server_launchctl.plist` to suit your environment and use any of the scripts as needed.
