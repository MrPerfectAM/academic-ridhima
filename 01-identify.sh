#!/bin/bash
# Author: Ridhima (24BCE10320)

# This script extracts Linux Distro, Kernel, Current User, Home Directory, Uptime, and Date.

echo "================================================================================"
echo "                   Git AUDIT - SYSTEM IDENTITY                   "
echo "================================================================================"

echo "Linux Distribution: $(lsb_release -ds)"
echo "Kernel Version:     $(uname -r)"
echo "Current User:       $(whoami)"
echo "Home Directory:     $(pwd)"
echo "System Uptime:      $(uptime -p)"
echo "Current Date/Time:  $(date +"%a %b %d %Y %H:%M:%S %Z%z (%Z)")"

echo "--------------------------------------------------------------------------------"
echo "Message: This system runs on Open Source software, providing freedom to study, change, and distribute."
echo "================================================================================"