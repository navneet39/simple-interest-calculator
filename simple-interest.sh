#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    echo "scale=2; ($principal * $rate * $time) / 100" | bc
}

# Main program
echo "Welcome to the Simple Interest Calculator!"

# Read inputs from the user
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest: " rate
read -p "Enter the time (in years): " time

# Calculate simple interest
simple_interest=$(calculate_simple_interest $principal $rate $time)

# Display the result
echo "The simple interest is: $simple_interest"
