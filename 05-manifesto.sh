#!/bin/bash
# Author: Ridhima (24BCE10320)

# This script asks 3 interactive questions and constructs a paragraph injecting the answers.

echo "================================================================================"
echo "                   Git AUDIT - MANIFESTO GENERATOR                "
echo "================================================================================"

read -p "What is your name? " name
read -p "What is your favorite open source project? " project
read -p "Why do you contribute to open source? " reason

echo "As $name, I believe in the power of open source and contribute to projects like $project because $reason." > "${name}.txt"

echo "Manifesto saved to ${name}.txt"

echo "================================================================================"