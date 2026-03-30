#!/bin/bash
# Author: Ridhima (24BCE10320)

# This script accepts a target log file as $1 and a keyword as $2.

echo "================================================================================"
echo "                   Git AUDIT - LOG FILE ANALYZER                "
echo "================================================================================"

# A realistic log path for Git could be /var/log/git.log
log_file="$1"
keyword="$2"

count=0
matches=()
while IFS= read -r line; do
    if [[ "$line" == *"$keyword"* ]]; then
        ((count++))
        matches+=("$line")
    fi
done < "$log_file"

echo "Found $count occurrences of '$keyword' in $log_file"

echo "Last 5 matches:"
for ((i=${#matches[@]}-1; i>=${#matches[@]}-5; i--)); do
    echo "${matches[i]}"
done

echo "================================================================================"