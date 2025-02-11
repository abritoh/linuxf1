#---------------------------------------------------------------------------------------------------------------
# Hackerrank Linux | ClusterBR (arcebrito@gmail.com) | 2025-FEB)
#---------------------------------------------------------------------------------------------------------------

#41
# Input: You are given a CSV file where each row contains the name of a city and its state separated by a comma.
# Output: Restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.
#
paste -s -d';' < /dev/stdin

#42
# You are given a CSV file where each row contains the name of a city and its state separated by a comma. 
# Your task is to restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.
#
#!/bin/bash
## solution-1::
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

## solution-2
paste -d';' - - - 

#43
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

#45
# Given a list of countries, each on a new line, your task is to read them into an array and then display the count of elements in that array.
#!/bin/bash
arr=();
while IFS= read -r ln; do arr+=("$ln"); done < /dev/stdin;
echo "${#arr[@]}";

#46
# Given a list of countries, each on a new line, your task is to read them into an array. 
# Then, concatenate the array with itself (twice) - so that you have a total of three repetitions 
# of the original array - and then display the entire concatenated array, with a space between each of the countries' names.
#
#!/bin/bash

## solution-1::
arr=(); arr2=();
while IFS= read -r ln || [[ -n "$ln" ]]; do arr+=("$ln"); done < /dev/stdin;
arr2+=("${arr[@]}"); arr2+=("${arr[@]}"); arr2+=("${arr[@]}"); echo "${arr2[@]}";

## solution-2::
mapfile -t arr < /dev/stdin
arr2=("${arr[@]}" "${arr[@]}" "${arr[@]}"); echo "${arr2[@]}"

#47
# Given a list of countries, each on a new line, your task is to read them into an array 
# and then display the element indexed at 3. Note that indexing starts from 0.
#
mapfile -t arr < /dev/stdin; echo "${arr[3]}"

#48
# Given an input file, in each line, highlight all the occurrences of 'thy' 
# by wrapping them up in brace brackets. The search should be case-insensitive.
#
#!/bin/bash
sed -e "s/thy/{&}/gi"

#49
# You are given a text file that will be piped into your command through STDIN. Use grep to display all those lines that contain the word the in them.
# Display only those lines of the input file that contain the word 'the'.
#
grep -w "the" /dev/stdin

#50
# You are given a text file that will be piped into your command through STDIN. Use grep to display all those lines that contain the word the in them.
# The search should NOT be sensitive to case. Display only those lines of the input file that contain the word 'the'.
#
grep -i -w 'the' /dev/stdin

#51
# Given a text file, which will be piped to your command through STDIN, use grep to display all those lines 
# which contain any of the following words in them: the that then those
# The search should not be sensitive to case. Display only those lines of an input file, which contain the required words.
#
grep -i -E "\b(the|that|then|those)\b" /dev/stdin

#52
# Given an input file, with N credit card numbers, each in a new line, your task is to grep out and output 
# only those credit card numbers which have two or more consecutive occurences of the same digit 
# (which may be separated by a space, if they are in different segments). 
# Assume that the credit card numbers will have 4 space separated segments with 4 digits each.
grep '\([0-9]\) *\1' /dev/stdin


#53
# You are given a list of countries, each on a new line. Your task is to read them into an array 
# and then filter out (remove) all the names containing the letter 'a' or 'A'.
#
#!/bin/bash
r=();
mapfile -t arr </dev/stdin;
for x in "${arr[@]}"
do
    # form-1: using grep
    #if echo "$x" | grep -q -i 'a'; then
    # form-2: using [[ ... ]]
    if [[ "$x" =~ [aA] ]]; then
        continue;
    else
        r+=("$x");
    fi
done
echo "${r[@]}"

#54
# You are given a text file that will be piped into your command through STDIN. 
# Use grep to remove all those lines that contain the word 'that'. The search should NOT be sensitive to case.
#
grep -i -w -v 'that'


#55
# For each line in a given input file, transform the first occurrence of the word 'the' with 'this'. 
# The search and transformation should be strictly case sensitive.
#
sed -e 's/\bthe\b/this/' /dev/stdin

#56 
# For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. 
# The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.
#
sed -e 's/\bthy\b/your/gi' /dev/stdin

