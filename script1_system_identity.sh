#!/bin/bash

# Name: Ridhima Agarwal
# Reg No: 24BCE10320
# Script 1: Advanced System Information Tool

clear

echo "======================================="
echo "     VITYARTHI SYSTEM INFO TOOL        "
echo "======================================="

show_basic_info() {
    echo "User: $USER"
    echo "Hostname: $(hostname)"
    echo "Current Date & Time: $(date)"
    echo "Operating System: $(uname -o)"
    echo "Kernel Version: $(uname -r)"
}

show_memory() {
    echo "------ Memory Details ------"
    free -h
}

show_disk() {
    echo "------ Disk Details ------"
    df -h
}

show_cpu() {
    echo "------ CPU Info ------"
    lscpu | grep 'Model name'
}

while true; do
    echo ""
    echo "1. Basic Info"
    echo "2. Memory Info"
    echo "3. Disk Info"
    echo "4. CPU Info"
    echo "5. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1) show_basic_info ;;
        2) show_memory ;;
        3) show_disk ;;
        4) show_cpu ;;
        5) echo "Exiting..."; break ;;
        *) echo "Invalid choice! Try again." ;;
    esac
done
