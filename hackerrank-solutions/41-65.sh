#---------------------------------------------------------------------------------------------------------------
# Hackerrank Linux | ClusterBR (arcebrito@gmail.com) | 2025-FEB)
#---------------------------------------------------------------------------------------------------------------

# 41
# Input: You are given a CSV file where each row contains the name of a city and its state separated by a comma.
# Output: Restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.
#
paste -s -d';' < /dev/stdin

# 42
# You are given a CSV file where each row contains the name of a city and its state separated by a comma. 
# Your task is to restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.
#
#!/bin/bash
#-- solution-1
> tmp.csv
n=1; line='';
while IFS=',' read -r city state other || [[ -n "$city" ]]
do
    if [ $n -eq 1 ]; then
        line="$city,$state"
    elif [ $n -eq 2 ]; then
        line="$line;$city,$state"
    elif [ $n -eq 3 ]; then
        line="$line;$city,$state"
        echo -e "$line" >> tmp.csv
        n=0; line='';
    fi    
    n=$((n+1))
done < /dev/stdin; cat tmp.csv; rm tmp.csv;

#-- solution-2
paste -d';' - - - 

# 43
# Input: A list of country names. The only characters present in the country names will be upper or lower case characters and hyphens.
# Output: Display the entire array of country names, with a space between each of them.
#
#!/bin/bash
# the final arr variable is a string instead of an array.
arr=""; while IFS= read -r ln; do arr+="$ln "; done < /dev/stdin; echo "$arr";

#44
#
#!/bin/bash
arr=(); 
while IFS= read -r ln
do
    arr+=("$ln")
done < /dev/stdin;
echo "${arr[@]:3:5}"

# 45
# Given a list of countries, each on a new line, your task is to read them into an array and then display the count of elements in that array.
#!/bin/bash
arr=();
while IFS= read -r ln; do arr+=("$ln"); done < /dev/stdin;
echo "${#arr[@]}";

# 46
# Given a list of countries, each on a new line, your task is to read them into an array. 
# Then, concatenate the array with itself (twice) - so that you have a total of three repetitions 
# of the original array - and then display the entire concatenated array, with a space between each of the countries' names.
#
#!/bin/bash

#-- solution-1
arr=(); arr2=();
while IFS= read -r ln || [[ -n "$ln" ]]; do arr+=("$ln"); done < /dev/stdin;
arr2+=("${arr[@]}"); arr2+=("${arr[@]}"); arr2+=("${arr[@]}"); echo "${arr2[@]}";

#-- solution-2::
mapfile -t arr < /dev/stdin
arr2=("${arr[@]}" "${arr[@]}" "${arr[@]}"); echo "${arr2[@]}"

# 47
# Given a list of countries, each on a new line, your task is to read them into an array 
# and then display the element indexed at 3. Note that indexing starts from 0.
#
mapfile -t arr < /dev/stdin; echo "${arr[3]}"

# 48
# Given an input file, in each line, highlight all the occurrences of 'thy' 
# by wrapping them up in brace brackets. The search should be case-insensitive.
#
#!/bin/bash
sed -e "s/thy/{&}/gi"

# 49
# You are given a text file that will be piped into your command through STDIN. Use grep to display all those lines that contain the word the in them.
# Display only those lines of the input file that contain the word 'the'.
#
grep -w "the" /dev/stdin

# 50
# You are given a text file that will be piped into your command through STDIN. Use grep to display all those lines that contain the word the in them.
# The search should NOT be sensitive to case. Display only those lines of the input file that contain the word 'the'.
#
grep -i -w 'the' /dev/stdin

# 51
# Given a text file, which will be piped to your command through STDIN, use grep to display all those lines 
# which contain any of the following words in them: the that then those
# The search should not be sensitive to case. Display only those lines of an input file, which contain the required words.
#
grep -i -E "\b(the|that|then|those)\b" /dev/stdin

# 52
# Given an input file, with N credit card numbers, each in a new line, your task is to grep out and output 
# only those credit card numbers which have two or more consecutive occurences of the same digit 
# (which may be separated by a space, if they are in different segments). 
# Assume that the credit card numbers will have 4 space separated segments with 4 digits each.
grep '\([0-9]\) *\1' /dev/stdin

# 53
# You are given a list of countries, each on a new line. Your task is to read them into an array 
# and then filter out (remove) all the names containing the letter 'a' or 'A'.
#
#!/bin/bash
r=();
mapfile -t arr </dev/stdin;
for x in "${arr[@]}"
do
    # form-1: using grep
    # if echo "$x" | grep -q -i 'a'; then
    # form-2: using [[ ... ]]
    if [[ "$x" =~ [aA] ]]; then
        continue;
    else
        r+=("$x");
    fi
done
echo "${r[@]}"

# 54
# You are given a text file that will be piped into your command through STDIN. 
# Use grep to remove all those lines that contain the word 'that'. The search should NOT be sensitive to case.
#
grep -i -w -v 'that'


# 55
# For each line in a given input file, transform the first occurrence of the word 'the' with 'this'. 
# The search and transformation should be strictly case sensitive.
#
sed -e 's/\bthe\b/this/' /dev/stdin

# 56 
# For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. 
# The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.
#
sed -e 's/\bthy\b/your/gi' /dev/stdin

# 57
# There are N integers in an array A. All but one integer occur in pairs. Your task is to find the number that occurs only once.
# Input: The first line of the input contains an integer N, indicating the number of integers. The next line contains N space-separated integers that form the array A.
# Output: Output S, the number that occurs only once.
#
#!/bin/bash
read n
read str

arr=($str);
arr_size=${#arr[@]}
for x in "${arr[@]}"
do  
    found=0;
    for y in "${arr[@]}"
    do  
         if (( x==y )); then
            found=$((found+1));            
         fi
    done
    if (( found!=2 )); then
        echo "$x";
        break;
    fi
done;

# 58
# Task: You are given a list of countries, each on a new line. Your task is to read them into an array and then transform them in the following way:
# The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). Then, display the entire array with a space between each country's names.
#
#!/bin/bash
mapfile -t arr < /dev/stdin
result=""
for x in "${arr[@]}"
do
    # method-1:
    line=$(echo "$x" | sed -e 's/^[A-Z]/./')
    # method-2: using <<< (here-string, C++ syntax) 
    line=$(sed -e 's/^[A-Z]/./' <<< "$x")
    result+="$line "
done;
echo "$result";


# 59 
# You are given a file with four space separated columns containing the scores of students in three subjects. 
# The first column contains a single character (A-Z), the student identifier.
# The next three columns have three numbers each. The numbers are between 0 and 100. 
# These numbers denote the scores of the students in English, Mathematics, and Science, respectively.
# Your task is to identify those lines that do not contain all three scores for students.
# 
#!/bin/bash
awk 'NF != 4 {print "Not all scores are available for", $1}' /dev/stdin

# 60
# You are provided a file with four space-separated columns containing the scores of students in three subjects. 
# The first column, contains a single character (A-Z) - the identifier of the student.
# The next three columns have three numbers (each between 0 and 100) which are the scores of the students in English, Mathematics and Science respectively.#
# Your task is to identify the performance grade for each student. 
# If the average of the three scores is 80 or more, the grade is 'A'. 
# If the average is 60 or above, but less than 80, the grade is 'B'. 
# If the average is 50 or above, but less than 60, the grade is 'C'. 
# Otherwise the grade is 'FAIL'.
#
#!/bin/bash
awk '{
    sum = $2 + $3 + $4
    avg = sum / 3;
    if (avg>=80) {
        print $1, $2, $3, $4 " : A"
    } else if (avg>=60 && avg<80) {
        print $1, $2, $3, $4 " : B"
    } else if (avg>=50 && avg<60) {
        print $1, $2, $3, $4 " : C"
    } else {
        print $1, $2, $3, $4 " : FAIL"
    }
}' /dev/stdin


# 61
# You are provided a file with four space-separated columns containing the scores of students in three subjects. 
# The first column, contains a single character (A-Z) - the identifier of the student. 
# The next three columns have three numbers (each between 0 and 100) which are the scores of the students in English, Mathematics and Science respectively.
# Concatenate every 2 lines of input with a semi-colon
# 
#!/bin/bash
awk '
# odd-line (impar)
NR % 2 == 1 {
    line1 = $0
}
# even-line (par)
NR % 2 == 0 {
    print line1 ";" $0
}
# last odd-line 
END {
    if (NR % 2 == 1) {
        print line1 ";"
    }
}' /dev/stdin


# 62
# Each line contains a credit card number in the form dddd dddd dddd dddd, where d denotes a decimal digit (i.e., 0 through 9). 
# There are a total of n lines of credit card numbers.
# Output: For each credit card number, print its masked version on a new line.
# option -E extended regular expressions

# 1st replacement
sed -E 's/([0-9]{4})/****/1' | \
# 2nd replacement
sed -E 's/([0-9]{4})/****/1' | \
# 3rd replacement; hence 4-place remains unchanged
sed -E 's/([0-9]{4})/****/1' /dev/stdin

# 63
# Given an input file, with N credit card numbers, each in a new line, your task is to reverse the ordering of segments in each credit card number. 
# Assume that the credit card numbers will have 4 space separated segments with 4 digits each.
# If the original credit card number is 1434 5678 9101 1234, transform it to 1234 9101 5678 1434.
# option -E extended regular expressions

#captures each regex-group and changes the order
sed -E 's/([0-9]+) ([0-9]+) ([0-9]+) ([0-9]+)/\4 \3 \2 \1/'

# 64
# https://www.hackerrank.com/challenges/fractal-trees-all/problem?isFullScreen=true
# Creating a Fractal Tree from Y-shaped branches
# This challenge involves the construction of trees, in the form of ASCII Art.
# We have to deal with real world constraints, so we cannot keep repeating the pattern infinitely. 
# So, we will provide you a number of iterations, and you need to generate the ASCII version 
# of the Fractal Tree for only those many iterations (or, levels of recursion). 
#
#!/bin/bash
N=0
T_ROWS=63
T_COLS=100
CENTER_POS_0=16
declare -A CANVAS

function fn_init_canvas {
    for ((r=1; r<=T_ROWS; r++)); do
        for ((c=1; c<=T_COLS; c++)); do CANVAS[$r,$c]="_"; done
    done
}

function fn_update_canvas {
    local origin_row=$1
    local origin_col=$2
    local iteration=$3
    local center_pos=$4

    local row=0
    local col=0
    local new_origin_left_row=0
    local new_origin_left_col=0
    local new_origin_right_row=0
    local new_origin_right_col=0

    if [[ iteration -gt 0 ]]; then
        for ((i=0; i<center_pos; i++)); do
            CANVAS[$(($origin_row - $i)),$origin_col]=1
            row=$(($origin_row - $i))
        done

        for ((i=1; i<=center_pos; i++)); do
            CANVAS[$(($row-$i)),$(($origin_col - $i))]=1
            new_origin_left_row=$(($row - $i))
            new_origin_left_col=$(($origin_col - $i))
            CANVAS[$(($row-$i)),$(($origin_col + $i))]=1
            new_origin_right_row=$(($row - $i))
            new_origin_right_col=$(($origin_col + $i))
        done

        fn_update_canvas $(($new_origin_left_row  - 1)) $new_origin_left_col  $(($iteration - 1)) $(($center_pos / 2)) # left
        fn_update_canvas $(($new_origin_right_row - 1)) $new_origin_right_col $(($iteration - 1)) $(($center_pos / 2)) # rigth
    fi
}

function fn_print_canvas {
    for ((i=1; i<=T_ROWS; i++)); do
        for ((j=1; j<=T_COLS; j++)); do
            printf '%s' "${CANVAS[$i,$j]}"
        done
        printf "\n"
    done
}

read N
fn_init_canvas
fn_update_canvas $T_ROWS $(($T_COLS / 2)) $N $CENTER_POS_0
fn_print_canvas

