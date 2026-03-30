#!/bin/bash
# Author: Ridhima (24BCE10320)

# This script checks installation status and extracts the exact version of Git.

echo "================================================================================"
echo "                   Git AUDIT - PACKAGE INSPECTOR                "
echo "================================================================================"

# Detect the package manager
if [ -x "$(command -v apt)" ]; then
    # For Debian/Ubuntu systems
    package_manager="apt"
    package_name="git"
    version=$(apt-cache policy git | grep Installed | cut -d ':' -f2- | tr -d ' ')
    if [ -n "$version" ]; then
        echo "Status: $package_name is INSTALLED on this Debian/Ubuntu system."
        echo "Version: $version"
    else
        echo "Status: $package_name is NOT INSTALLED on this Debian/Ubuntu system."
    fi
elif [ -x "$(command -v yum)" ]; then
    # For RHEL/Fedora systems
    package_manager="yum"
    package_name="git"
    version=$(yum list installed git | grep git | cut -d ' ' -f2)
    if [ -n "$version" ]; then
        echo "Status: $package_name is INSTALLED on this RHEL/Fedora system."
        echo "Version: $version"
    else
        echo "Status: $package_name is NOT INSTALLED on this RHEL/Fedora system."
    fi
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Git: Git is a free and open source distributed version control system."
echo " - Linux: Linux is an open source operating system."
echo " - Vim: Vim is a highly configurable text editor."
echo " - Firefox: Firefox is a free and open source web browser."
echo "================================================================================"