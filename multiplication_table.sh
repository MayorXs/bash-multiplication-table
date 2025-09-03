#!/bin/bash
# ==============================================
# Multiplication Table Script (Part 1 - List Form)
# Author: Muftau
# Description: Generates multiplication table using list-form for loop
# ==============================================

# Prompt user for a number
read -p "Enter a number: " number

echo "Multiplication table for $number (using list form for loop):"

# List-form for loop from 1 to 10
for i in {1..10}
do
    result=$((number * i))
    echo "$number x $i = $result"
done

# ==============================================
# Part 2 - C-Style For Loop
# ==============================================

echo ""
echo "Multiplication table for $number (using C-style for loop):"

for ((i=1; i<=10; i++))
do
    result=$((number * i))
    echo "$number x $i = $result"
done
# ==============================================
# Part 3 - Full vs Partial Table
# ==============================================

echo ""
read -p "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): " choice

if [[ "$choice" == "f" ]]; then
    start=1
    end=10
elif [[ "$choice" == "p" ]]; then
    read -p "Enter the starting number (between 1 and 10): " start
    read -p "Enter the ending number (between 1 and 10): " end
    
    # Validate range
    if ! [[ "$start" =~ ^[0-9]+$ && "$end" =~ ^[0-9]+$ && "$start" -ge 1 && "$end" -le 10 && "$start" -le "$end" ]]; then
        echo "Invalid range. Showing full table instead."
        start=1
        end=10
    fi
else
    echo "Invalid choice. Showing full table instead."
    start=1
    end=10
fi

echo ""
echo "Multiplication table for $number from $start to $end:"

for ((i=start; i<=end; i++))
do
    result=$((number * i))
    echo "$number x $i = $result"
done

#!/bin/bash
# ==============================================
# Multiplication Table Script (Capstone Project)
# Author: Your Name
# ==============================================

while true
do
    # Step 1: Ask for number
    read -p "Enter a number for the multiplication table: " number

    # Step 2: Ask for full or partial table
    read -p "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): " choice

    if [[ "$choice" == "f" ]]; then
        start=1
        end=10
    elif [[ "$choice" == "p" ]]; then
        read -p "Enter the starting number (between 1 and 10): " start
        read -p "Enter the ending number (between 1 and 10): " end
        
        # Validate range
        if ! [[ "$start" =~ ^[0-9]+$ && "$end" =~ ^[0-9]+$ && "$start" -ge 1 && "$end" -le 10 && "$start" -le "$end" ]]; then
            echo "Invalid range. Showing full table instead."
            start=1
            end=10
        fi
    else
        echo "Invalid choice. Showing full table instead."
        start=1
        end=10
    fi

    # Step 3: Ask for order (ascending or descending)
    read -p "Do you want the table in ascending or descending order? (a/d): " order

    echo ""
    echo "Multiplication table for $number from $start to $end:"

    if [[ "$order" == "d" ]]; then
        for ((i=end; i>=start; i--))
        do
            result=$((number * i))
            echo "$number x $i = $result"
        done
    else
        for ((i=start; i<=end; i++))
        do
            result=$((number * i))
            echo "$number x $i = $result"
        done
    fi

    echo ""
    read -p "Do you want to generate another table? (y/n): " again
    if [[ "$again" != "y" ]]; then
        echo "Goodbye!"
        break
    fi
done

