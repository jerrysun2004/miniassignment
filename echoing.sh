#this is the first activity,
who
date
$HOME 
$USER
#activity 1
#!/bin/bash

# Display the current date and time
echo "The time and date are: $(date)"

# List users logged into the system
echo "Let’s see who is logged into the system:"
who

# Loop through all logged-in users to display their home directories
echo ""
for user in $(who | awk '{print $1}' | sort | uniq); do
    home_directory=$(getent passwd "$user" | cut -d: -f6)
    echo "For $user, the home directory is $home_directory"
done

#activity 2 working with positional arguments
#!/bin/bash

# Check if two arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <yourname> <amount_of_money>"
    exit 1
fi

# Assign the positional arguments to variables
yourname=$1
amount_of_money=$2

# Display the output
echo "My name is $yourname and I have \$$amount_of_money in my wallet."

#activity 3 variables
#!/bin/bash

# Define mathvar1 as 1+5
mathvar1=$((1 + 5))

# Calculate mathvar2 as mathvar1 * 20
mathvar2=$((mathvar1 * 20))

# Define mathvar3 as 10
mathvar3=10

# Calculate mathvar4 as mathvar1 * (mathvar2 + mathvar3)
mathvar4=$((mathvar1 * (mathvar2 + mathvar3)))

# Display the result
echo "Variable 1 is $mathvar1. Variable 2 is $mathvar2. Using $mathvar3 for Variable 3, our final Variable 4 is $mathvar4."

#activity 4 floating point
#!/bin/bash

# Define the variable 'floating' and use bc to calculate it with 3 decimal places
floating=$(echo "scale=3; 4.5 / 1.7" | bc)

# Display the result
echo "Our floating variable is $floating"


