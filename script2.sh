#!/bin/bash

# Name: Ridhima Agarwal
# Reg No: 24BCE10320
# Script 2: Smart File Organizer

echo "===================================="
echo "     VITYARTHI FILE ORGANIZER       "
echo "===================================="

read -p "Enter directory to organize: " dir
if [ ! -d "$dir" ]; then
    echo "Directory not found!"
    exit
fi
cd "$dir" || exit
mkdir -p Documents Images Videos Others
count=0
for file in *; do
    if [ -f "$file" ]; then
        case "$file" in
            *.txt|*.pdf|*.docx)
                mv "$file" Documents/
                ((count++))
                ;;
            *.jpg|*.png|*.jpeg)
                mv "$file" Images/
                ((count++))
                ;;
            *.mp4|*.mkv)
                mv "$file" Videos/
                ((count++))
                ;;
            *)
                mv "$file" Others/
                ((count++))
                ;;
        esac
    fi
done
echo "------------------------------------"
echo "Total files organized: $count"
echo "Task completed successfully!"
