#!/bin/bash

# Name: Ridhima Agarwal
# Reg No: 24BCE10320
# Script 3: Advanced Calculator

calculate() {
    read -p "Enter first number: " a
    read -p "Enter second number: " b
    echo "Choose operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    read -p "Choice: " op
    case $op in
        1) result=$(echo "$a + $b" | bc) ;;
        2) result=$(echo "$a - $b" | bc) ;;
        3) result=$(echo "$a * $b" | bc) ;;
        4)
            if [ "$b" == "0" ]; then
                echo "Cannot divide by zero!"
                return
            fi
            result=$(echo "scale=2; $a / $b" | bc)
            ;;
        *) echo "Invalid choice"; return ;;
    esac
    echo "Result = $result"
}
while true; do
    echo ""
    echo "===== VIDYARTHI CALCULATOR ====="
    echo "1. Perform Calculation"
    echo "2. Exit"
    read -p "Enter choice: " choice
    case $choice in
        1) calculate ;;
        2) echo "Goodbye!"; break ;;
        *) echo "Invalid option!" ;;
    esac
done
