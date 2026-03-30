#!/bin/bash
# Author: Ridhima (24BCE10320)

# This script defines an array of directories and dynamically appends 2 specific paths for Git.

dirs=(/etc /var/log /usr/bin /var/www)
dirs+=(/usr/share/git /etc/git)

echo "================================================================================"
echo "                   Git AUDIT - DIRECTORY AUDITOR                "
echo "================================================================================"

for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        size=$(du -sh "$dir" | cut -f1)
        permissions=$(stat -c "%a" "$dir")
        owner=$(stat -c "%U" "$dir")
        echo "$dir | $size | $permissions | $owner"
    else
        echo "$dir | NOT FOUND | - | -"
    fi
done

echo "================================================================================"