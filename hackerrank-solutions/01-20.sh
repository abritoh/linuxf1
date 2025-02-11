#---------------------------------------------------------------------------------------------------------------
# Hackerrank Linux | ClusterBR (arcebrito@gmail.com) | 2025-FEB)
#---------------------------------------------------------------------------------------------------------------

# 01
#
echo "HELL0"

# 02 
# Your task is to use for loops to display only odd natural numbers from 0 to 99.
#
for i in {1..99}
do
    if ((i%2 != 0)); then
        echo $i
    fi
done

# 03
# Write a Bash script which accepts <name> as input and displays the greeting "Welcome (name)"
#
#!/bin/bash
read name
echo "Welcome $name"

# 04
# Use a for loop to display the natural numbers from 1 to 50.
for i in {1..50}
do
    echo $i
done

# 05
# Given two integers, X and Y, find their sum, difference, product, and quotient.
#
#!/bin/bash
read x
read y

r1=$((x + y))
r2=$((x - y))
r3=$((x * y))
r4=$((x / y))

echo $r1
echo $r2
echo $r3
echo $r4

# 06
# Given two integers, X and Y, identify whether X<Y or X>Y or X==Y.
# PRINT: X is less than Y | X is greater than Y | X is equal to Y
#
#!/bin/bash
read x
read y

if [ $x -lt $y ]; then
    echo 'X is less than Y'
elif [ $x -gt $y ]; then
    echo 'X is greater than Y'
else 
    echo 'X is equal to Y'
fi

# 07
# Read in one character from STDIN. 
# If the character is 'Y' or 'y' display "YES". 
# If the character is 'N' or 'n' display "NO". 
# No other character will be provided as input.
#
#!/bin/bash

read c
if [ $c = 'y' ] || [ $c = 'Y' ] ; then
    echo "YES"
elif [ $c = 'n' ] || [ $c = 'N' ] ; then
    echo "NO"
fi

# 08
# Given three integers (A, B, and C) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.
# If all three sides are equal, output EQUILATERAL. Otherwise, if any two sides are equal, output ISOSCELES. Otherwise, output SCALENE.
# 
# Triangle Inequality Theorem.
#   For any set of three side lengths to form a triangle, 
#   they must satisfy the Triangle Inequality Theorem, which states:
#   A+B > C, A+C > B, B+C > A

read a
read b
read c

if [ $((a+b)) -gt $c ] || [ $((a+c)) -gt $b ] || [ $((b+c)) -gt $a ]; then
    if [ $a -eq $b ] && [ $a -eq $c ] && [ $b -eq $c ]; then
        echo 'EQUILATERAL'
    elif [ $a -eq $b ] || [ $a -eq $c ] | [ $b -eq $c ]; then
        echo 'ISOSCELES'
    else 
        echo 'SCALENE'
    fi
else
    echo 'Not a triangle'
fi

# 09
# A mathematical expression containing +,-,*,^, / and parenthesis will be provided. 
#   Read in the expression, then evaluate it. Display the result rounded to 3 decimal places.
#
#!/bin/bash
read exp
r=$(echo "scale=10; $exp" | bc)
rsp=$(printf "%.3f\n" "$r")
echo "$rsp"

# 10
# Given N integers, compute their average, rounded to three decimal places.
# --- $(...) command substitution. It runs the command inside the parentheses and returns its output.
# --- $((...)) performs arithmetic evaluations in Bash.
# --- "${array[@]}" accesses all elements of an array and ensures they are treated as separate arguments.
#
#!/bin/bash
read n
nums=() #array-of-numbers

#-- for-c-style
for (( i=0; i<n; i++))
do
    read num
    nums+=("$num")
done

sum=0
#-- for-each style
for num in "${nums[@]}"
do
    sum=$((sum + num))
done


r=$(echo "scale=10; $sum / $n" | bc)
rsp=$(printf "%.3f\n" "$r")
echo "$rsp"

# 11
#-- Given N lines of input, print the 3rd character from each line as a new line of output. 
#-- It is guaranteed that each of the N lines of input will have a 3rd character.
#-- Input Format: A text file containing N lines of ASCII characters.
#
#!/bin/bash
while IFS= read -r line
do
    echo "$line" | cut -c3
done

# 12
#-- Display the 2nd and 7th character from each line of text.
#!/bin/bash
#
while IFS= read -r line
do
    echo "$line" | cut -c2,7
done

# 13
# Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included).
#
#!/bin/bash
while IFS= read -r line
do
    echo "$line" | cut -c2-7
done

# 14
# Display the first four characters from each line of text.
#
#!/bin/bash
# solution-1: 
while IFS= read -r line
do
    echo "$line" | cut -c1-4
done

# solution-2
# usage:  cut -c 1-4 < file.txt
cut -c 1-4

# 15
# Given a tab delimited file with several columns (tsv format) print the first three fields.
# 
#!/bin/bash
# https://www.man7.org/linux/man-pages/man1/cut.1.html
# -f, --fields=LIST
#               select only these fields;  also print any line that
#               contains no delimiter character, unless the -s option is
#               specified
while IFS= read -r line
do
    echo "$line" | cut -f1-3
done

# 16
#
#-- Print the characters from thirteenth position to the end.
#
#!/bin/ash
while IFS= read -r line
do
    echo "$line" | cut -c13-
done

# 17
# Given a sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.
# 
#!/bin/bash
while IFS= read -r line
do
    echo "$line" | cut -d ' ' -f 4
done

# 18
# Given a sentence, identify and display its first three words. Assume that the space (' ') is the only delimiter between words. 
#
cut -d " " -f 1-3 /dev/stdin

# 19
# Given a tab delimited file with several columns (tsv format) print the fields from second fields to last field.
#
cut -f 2-

# 20
# In this challenge, we practice using the head command to display the first N lines of a text file.
# Display the first 20 lines of an input file.
#
#!/bin/bash
# solution-1
head -n 20
# solution-2
head -n 20 /dev/stdin
