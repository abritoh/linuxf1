#---------------------------------------------------------------------------------------------------------------
# Hackerrank Linux | ClusterBR (arcebrito@gmail.com) | 2025-FEB)
#---------------------------------------------------------------------------------------------------------------

# 21
# In this challenge, we practice using the head command to display the first N characters of a text file.
# Display the first 20 characters of an input fil
# 
#!/bin/bash
head -c 20

# 22
# Display the lines (from line number 12 to 22, both inclusive) of a given text file.
# 
#!/bin/bash

#-- solution-1
n=1
while IFS= read -r line
do
    if [ $n -ge 12 ] && [ $n -le 22 ]; then
        echo "$line"
    fi
    n=$((n+1))
done

#-- solution-2
sed -n '12,22p' 

# 23
# In this challenge, we practice using the tail command to display the last N lines of a text file.
# Display the last 20 lines of an input file.
# 
#-- solution-1 using tac and head commands
tac | head -n 20 | tac

#-- solution-2 using tail
tail -n 20

# 24
# In this challenge, we practice using the tail command to display the last  characters of a text file.
# Display the last  characters of an input file.
# 
#!/bin/bash
tail -c 20

# 25
# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
# In a given fragment of text, replace all parentheses   with box brackets  .
#
tr '()' '[]'

# 26
# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
# In a given fragment of text, delete all the lowercase characters a-z.
#
tr -d "a-z" /dev/stdin         #1 
tr -d "a-z" < file.txt         #2
cat file.txt | tr -d 'a-z'     #3
cat /dev/stdin | tr -d 'a-z'   #4

# 27
# In a given fragment of text, replace all sequences of multiple spaces with just one space.
# 
cat /dev/stdin | tr -s ' '
tr -s ' ' < /dev/stdin

# 28
# In this challenge, we practice using the sort command to sort input in text or TSV formats.
# Given a text file, order the lines in lexicographical order.
#
sort < /dev/stdin

# 29
# In this challenge, we practice using the sort command to sort input in text or TSV formats.
# Given a text file, order the lines in reverse lexicographical order (i.e. Z-A instead of A-Z).
#
#-- solution-1 using tac and sort
tac < /dev/stdin | sort | tac

#-- solution-2 using sort -r
sort -r < /dev/stdin

# 30
# Input: A text file where each line contains a positive number (less than ) as described above.
# Output: Output the text file with the lines reordered in numerically ascending order.
#
#-- solution-1:
sort -n
#-- solution-2:
sort --sort=n file.txt

# 31
# The text file, with lines re-ordered in descending order (numerically).
#
#-- solution-1
sort -n | tac < /dev/stdin
#-- solution-2
sort -nr < /dev/stdin

# 32
# Rearrange the rows of the table in descending order of the values for the average temperature in January 
# (i.e, the mean temperature value provided in the second column).
#
#!/bin/bash
#-- solution-1
while IFS=$'\t' read -r city jan_t feb_t mar_t apr_t rest || [[ -n "$city" ]]
do    
    echo -e "$jan_t\t$city\t$jan_t\t$feb_t\t$mar_t\t$apr_t\t$rest" >> tmp_file.txt
done < /dev/stdin
sorted_lines=$(sort -rn tmp_file.txt)
echo "$sorted_lines" | cut -f2-
rm tmp_file.txt

#-- solution-2
sort -t$'\t' -rn -k2 /dev/stdin

# 33
# Input: A text file with multiple lines of TAB separated data. The first five fields have been explained above
# Output: Sort the data in ascending order of the average monthly temperature in January.
#
sort -t$'\t' -n -k2 < /dev/stdin

# 34
# Input: A text file with multiple lines of pipe-delimited data. The first five fields have been explained above
# Output: Sort the data in descending order of the average monthly temperature in January.
#
sort -t$'|' -rn -k2 < /dev/stdin

# 35
# Given a text file, remove the consecutive repetitions of any line.
#
uniq < /dev/stdin

# 36
#
# Given a text file, count the number of times each line repeats itself. 
# Only consider consecutive repetitions. Display the space separated count and line, respectively. 
# There shouldn't be any leading or trailing spaces. Please note that the uniq -c command by itself 
#
uniq -c | cut -c7- < /dev/stdin

# 37
#
uniq -ci | cut -c7- < /dev/stdin

# 38
#
uniq -u < /dev/stdin

# 39
# Input: You are given a CSV file where each row contains the name of a city and its state separated by a comma.
# Output: Replace the newlines in the input with tabs as demonstrated in the sample.
#
#-- solution-1
paste -s -d'\t' < /dev/stdin

#-- solution-2
paste -s -d$'\t' < /dev/stdin

#40
# Input: You are given a CSV file where each row contains the name of a city and its state separated by a comma.
# Output: Restructure the file in such a way, that every group of three consecutive rows are folded into one, and separated by tab.
#
#-- solution-1
> tmp.csv
n=1
line=''
while IFS=',' read -r name city other
do
    if [ $n -eq 1 ]; then
        line="$name,$city"
    elif [ $n -eq 2 ]; then
        line="$line\t$name,$city"
    elif [ $n -eq 3 ]; then
        line="$line\t$name,$city"
        echo -e "$line" >> tmp.csv
        n=0
        line=''
    fi    
    n=$((n+1))
done < /dev/stdin;
cat tmp.csv
rm tmp.csv
