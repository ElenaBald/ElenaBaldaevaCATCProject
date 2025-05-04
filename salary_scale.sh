#!/bin/bash

# Salary Scale Generator for John Smith
echo "------------------------------"
echo "Salary Scale Generator"
echo "------------------------------"

# Ask user for inputs
read -p "Enter starting salary (e.g., 11000): " start_salary
read -p "Enter number of salary points: " points
read -p "Enter salary increment per point: " increment
read -p "Is the employee a manager? (yes/no): " is_manager

# Determine how many increments per year
if [[ "$is_manager" == "yes" || "$is_manager" == "Yes" ]]; then
    inc_per_year=2
else
    inc_per_year=1
fi

# Get the current year
year=$(date +%Y)
salary=$start_salary

# Display the header
echo ""
echo "Salary Scale for John Smith"
echo "----------------------------"
printf "%-6s | %s\n" "Year" "Salary"
echo "----------------------------"

# Loop through and print salary scale
for (( i=0; i<points; i++ ))
do
    printf "%-6s | \$%s\n" "$year" "$salary"
    salary=$((salary + increment))
    if (( (i + 1) % inc_per_year == 0 )); then
        year=$((year + 1))
    fi
done
