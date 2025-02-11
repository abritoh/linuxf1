## Bash Syntax Cryptips

``` bash
 ^ ^              
(O,O)             
(   ) LINUX F1    
-"-"--------------
     ClusterBR

Document version v1.0.0
```
*The minimalistic style, backward compatibility, multiple ways to achieve the same result, and extensive use of special characters, along with the language's inherent concepts of streaming, piping, and redirecting, can make Bash scripting prone to cryptic and obscure syntax. This document summarizes some key features of **Bash scripting** syntax.*

01. **Command Substitution**: Runs command and returns its output, the backtick version is legacy, and $(...) is the preferred modern syntax.
```bash
$(command) or `command`
```
02. **Arithmetic Expansion**: Evaluates an arithmetic expression and returns the result. 
```bash
$((expression))
```
03. **Parameter Expansion**: Allows manipulation of variables, including extracting substrings, modifying values, and applying operations, using the ${} syntax.
```bash
${var:2:4}
```
04. **Brace Expansion**: Expands into a b c, allowing multiple arguments to be generated from a list or sequence.
```bash
echo {a,b,c}
```
05. **Parameter Expansion (with default values)**: Returns default if var is unset or null. It's a way of providing default values to variables.
```bash
${var:-default}
```
06. **Conditional Evaluation with 1-pair brackets**: A logical evaluation operator, supporting basic tests like file conditions, string comparisons, and numeric tests.
```bash
[ expression ]
```
07. **Conditional Evaluation 2-pair brackets**: Logical test operator that allows for pattern matching, logical operations, and more than single square bracket tests.
```bash
[[ expression ]]
```
08. **String Manipulation in Parameter Expansion**: Removes the shortest matching prefix (`#`) or suffix (`%`) of a string variable.
```bash
${var#pattern} or ${var%pattern}
```
09. **Process Substitution**: Allows the output or input of a command to be treated as a file.
```bash
<(command) or >(command)
```
10. **Here-document**: Allows multi-line input to be provided directly to a command.
```bash
cat <<EOF
Content here
EOF
```
11. **Here-string**: Passes a string directly to the command's standard input, replacing the need for echo.
```bash
command <<< "string"
```
12. **Array Access**: Accesses the element at the given index of an array. arr[@] and arr[*] refer to the entire array.
```bash
${arr[index]}
```
13. **Positional Parameters**: Represents the command-line arguments passed to a script (e.g., $1 is the first argument).
```bash
$1, $2, ..., $n
```
14. **File Descriptors and Redirection**: Redirects standard error (`2`) to standard output (`1`) or sends output to `/dev/null` to discard it.
```bash
2>&1 or 1>/dev/null
``` 
15. **Loop with File Descriptors**: Reads input from a custom file descriptor (here, `3`), allowing more advanced input handling.
```bash
2>&1 or 1>/dev/null
``` 
16. **Using `eval` for Command Execution**: Executes the string contained in `$command` as a Bash command. It's dangerous if the input is untrusted.
```bash
eval "$command"
``` 
17. In-Place Editing with `sed`: Edits files in place (i.e., modifies the file directly rather than printing the output to stdout).
```bash
sed -i 's/foo/bar/' file.txt
``` 
18. **Test with `-e`, `-f`, `-d` flags**: Tests if a file exists (`-e`), is a regular file (`-f`), or is a directory (`-d`).
```bash
if [ -e file ]; then ... fi
``` 
19. **`&&` and `||` for Command Chaining**: Executes command2 only if command1 succeeds (`&&`), and executes command3 if command1 fails (`||`).
```bash
command1 && command2 || command3
``` 
20. **Nested Loops with for**: A nested for loop that iterates over multiple ranges or sets.
```bash
for i in {1..3}; do for j in {a..c}; do echo "$i$j"; done; done
``` 
21. **`let` for Arithmetic Operations**: Performs arithmetic operations, modifying variables in place (though `$((...))` is preferred).
```bash
let "a = b + c"
```
22. **Redirecting Output to Multiple Locations**: tee writes output to both standard output and a file at the same time.
```bash
command | tee file.txt
```
23. **Using `shift` to Move Positional Parameters**: Shifts the positional parameters left, essentially removing `$1` and making `$2` the new `$1`.
```bash
shift
```
24. `Trap for Signal Handling`: Defines a set of commands to run when a specific signal (like `SIGINT` for interrupt) is received.
```bash
trap 'commands' SIGINT
```
25. **`$?` to Check Last Command Exit Status**: Checks the exit status of the last command. `0` means success, `non-zero` means failure.
```bash
if [ $? -eq 0 ]; then ... fi
```
26. **Command Grouping with `{}`**: Groups commands and redirects their combined output to a file.
```bash
{ command1; command2; } > output.txt
```
27. **Pipefail to Capture All Failures**: Ensures that a pipeline returns the exit status of the last failing command rather than the last successful one.
```bash
set -o pipefail
```
28. **Using `declare` for Local Variables**: Declares variables with specific attributes, like `-i for integer types` or `-r for readonly`, `-a for indexed arrays`, `-A for associative array`, `-f for functions`, etc.
```bash
declare -i count=0
```
29. **Process Substitution for Comparing Files**: Uses process substitution to compare the output of two commands as if they were files.
```bash
diff <(command1) <(command2)
```
30. **Using `find` with `exec`**: Finds files and executes a command on each result. The {} is replaced by the found filename.
```bash
find . -name "*.txt" -exec rm {} \;
```
31. **`xargs` for Command Execution**: Passes input from stdin as arguments to a command, often used for processing output from other commands.
```bash
echo "a b c" | xargs -n 1 echo
``` 
