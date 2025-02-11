#!/bin/bash
#------------------------------------------------------------------------------------------------
# ClusterBR (arcebrito@gmail.com) | 2025-FEB)
#------------------------------------------------------------------------------------------------
#INPUT:
#1. **`alias`** - Create shortcuts for longer commands.
#   Example: `alias ll='ls -l'`
#
#2. **`apropos`** - Search the man pages for a keyword.  
#   Example: `apropos copy`
#OUTPUT:
#36. **`ar`** - Create, modify, and extract from archives. Example: `ar x archive.a`
#37. **`arch`** - Display machine architecture. Example: `arch`
#...
#422. **`zzz`** - A placeholder command (often used in scripts).   Example: `zzz`

#-- input and output files
input_file="input-linux-raw-cmds.txt"
output_f1="linux-cmd-stg-1.md"
output_f2="linux-cmd-stg-2.md"
output_f3="linux-cmd-stg-3.md"
output_f4="linux-cmd-stg-4.md"
output_f5="linux-cmd-stg-5.md"
del_cmds_f="linux-cmd-deleted.txt"

echo "Initializing: removing existing output files..."
rm -f "$output_f1" "$output_f2" "$output_f3" "$output_f4" "$output_f5" "$del_cmds_f"

#-- stage 1. removes line-numbers, blanks and blanks-lines
line_number=0
while IFS= read -r line; 
do
	((line_number++))

	#-- remove numbers and spaces at the beginning of each line, also removes: ". "
	cleaned_line=$(echo "$line" | sed 's/^[0-9]*[[:space:]]*//' | sed 's/^\. //')
	echo "Stage 1:: processing line: $line_number | $cleaned_line"

	#-- check if the line is a blank line
	if [ -z "$cleaned_line" ]; then
		echo "Skipping blank line at line $line_number."
		continue
	fi
	echo "$cleaned_line" >> "$output_f1"
done < "$input_file"

#-- stage 2. join example line with command description line
output=""
previous_line=""
while IFS= read -r line; do
	line=$(echo "$line" | tr -d '\r')
	echo "Stage 2:: processing line: $line_numer | $line"
	
	if [[ "$line" =~ ^Example: ]]; then
		output+="${previous_line} $line"$'\n'
		previous_line=""
	else
		if [[ -n "$previous_line" ]]; then
			output+="$previous_line"$'\n'
		fi
		#-- remove leading and trailing spaces
		previous_line=$(echo "$line" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
	fi
	((line_number++))
done < "$output_f1"
if [[ -n "$previous_line" ]]; then
	output+="$previous_line"$'\n'
fi
echo "$output" > "$output_f2"

#-- stage 3. remove duplicated commands
declare -A command_map 
output=""
line_number=1
while IFS= read -r line; do
	command_name=$(echo "$line" | sed -n 's/^[^`]*`\([^`]*\)`.*$/\1/p')
	echo "Stage 3:: processing line: $line_number | $line"	
	
	if [[ -n "$command_name" && -z "${command_map[$command_name]}" ]]; then
		output+="$line"$'\n'
		command_map["$command_name"]=1
		((line_number++))
	else
		echo "$command_name:	$line" >> "$del_cmds_f"
	fi
done < "$output_f2"
echo "$output" > "$output_f3"

#-- stage 4. sorts the file
echo "Stage 4:: sorting the file: $output_f3"
sort "$output_f3" > "$output_f4"

#-- stage 5. enumerate the file
output=""
line_number=1
while IFS= read -r line; do
	echo "Stage 5:: processing line: $line_numer | $line"	
	
	#-- skips blank lines (empty, only-spaces)
	if [ -z "$line" ]; then		
		continue		
	else
		output+="$line_number. $line"$'\n'
		((line_number++))
	fi
done < "$output_f4"
echo "$output" > "$output_f5"

#------------------------------------------------------------------------------------------------
echo "Processing COMPLETED, output saved to file: output_f5."
#------------------------------------------------------------------------------------------------
