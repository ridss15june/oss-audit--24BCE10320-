#!/bin/bash

# Name: Ridhima Agarwal
# Reg No: 24BCE10320
# Script 4: Process Monitor

clear

while true; do
    echo "===================================="
    echo "     VITYARTHI PROCESS MONITOR      "
    echo "===================================="
    echo "1. Show Top CPU Processes"
    echo "2. Show Top Memory Processes"
    echo "3. Search Process by Name"
    echo "4. Kill a Process"
    echo "5. Exit"
    read -p "Enter choice: " choice
    case $choice in
        1)
            ps -eo pid,cmd,%cpu --sort=-%cpu | head -n 6
            ;;
        2)
            ps -eo pid,cmd,%mem --sort=-%mem | head -n 6
            ;;
        3)
            read -p "Enter process name: " pname
            ps aux | grep "$pname"
            ;;
        4)
            read -p "Enter PID to kill: " pid
            kill "$pid" && echo "Process killed!" || echo "Failed!"
            ;;
        5)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac

    echo ""
done
