#!/bin/bash
# ----------------------------------------------------
# Assignment 1 - Bash Scripting Basics
# Author: Thenu M
# Date: 2025-08-09
# Description: This script demonstrates basic Bash
#              commands, variables, conditionals,
#              loops, and user input.
# ----------------------------------------------------

# Clear the terminal for better readability
clear

echo "--------------------------------------------"
echo " Welcome to Assignment 1 - Bash Scripting! "
echo "--------------------------------------------"

# ----------- VARIABLES -----------------------
COURSE="Linux System Programming"
ASSIGNMENT_NO=1
TODAY=$(date +"%A, %d %B %Y")

echo "Course Name: $COURSE"
echo "Assignment Number: $ASSIGNMENT_NO"
echo "Today's Date: $TODAY"
echo ""

# ----------- USER INPUT ----------------------
read -p "Please enter your name: " NAME
echo "Hello, $NAME! Let's run some basic operations."
echo ""

# ----------- BASIC OPERATIONS ----------------
NUM1=10
NUM2=5

echo "We will perform basic arithmetic:"
SUM=$((NUM1 + NUM2))
DIFF=$((NUM1 - NUM2))
MULT=$((NUM1 * NUM2))
DIV=$((NUM1 / NUM2))

echo " $NUM1 + $NUM2 = $SUM"
echo " $NUM1 - $NUM2 = $DIFF"
echo " $NUM1 * $NUM2 = $MULT"
echo " $NUM1 / $NUM2 = $DIV"
echo ""

# ----------- CONDITIONALS --------------------
read -p "Enter a number to check if it's even or odd: " USER_NUM
if (( USER_NUM % 2 == 0 )); then
    echo "The number $USER_NUM is Even."
else
    echo "The number $USER_NUM is Odd."
fi
echo ""

# ----------- LOOP EXAMPLE --------------------
echo "Now printing numbers from 1 to 5:"
for i in {1..5}
do
    echo "Number: $i"
done
echo ""

# ----------- FILE CREATION -------------------
FILENAME="assignment1_output.txt"
echo "Saving summary to $FILENAME..."
{
    echo "Name: $NAME"
    echo "Course: $COURSE"
    echo "Assignment No: $ASSIGNMENT_NO"
    echo "Date: $TODAY"
    echo "Arithmetic Example: $NUM1 + $NUM2 = $SUM"
} > "$FILENAME"

echo "Summary saved successfully!"
echo ""
echo "Script execution completed."
echo "--------------------------------------------"
