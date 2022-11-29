### REFERENCES ###
[awk command usage](https://www.geeksforgeeks.org/awk-command-unixlinux-examples/) <br/>
[awk advance](https://phoenixnap.com/kb/awk-command-in-linux)

- is a scripting language used for manipulating data and generating reports
- awk command programming language requires no compiling and allows the user to use variables, numeric functions, string functions, and logical operators
1. AWK Operations:
- Scans a file line by line
- Splits each input line into fields
- Compares input line/fields to pattern
- Performs action(s) on matched lines

1. Useful For:
- Transform data files
- Produce formatted reports

1. Programming Constructs
- Format output lines
- Arithmetic and string operations
- Conditionals and loops

1. Built-in variables
- NR: count of the number of input records (usually lines)
- NF: keeps a count of the number of fields
- FS: FS command contains the field separator character which is used to divide fields (default whitespace, either space or tab), can be reassigned to other character
- RS: RS command stores the current record separator character (default is newline character)
- OFS: output field seperator, which separates the fields when Awk prints them (default is space)
- ORS: output record separator, which separates the output lines when Awk prints them (default is newline)


5. Syntax:
```
awk options 'selection _criteria {action}' input-file > output-file
```
- Input sample:
```
cat > employee.txt
ajay manager account 45000
sunil clerk account 25000
varun manager sales 50000
amit manager account 47000
tarun peon sales 15000
deepak clerk sales 23000
sunil peon sales 13000
satvik director purchase 80000 
```

- Default behavior of Awk: By default Awk prints every line of data from the specified file
```
awk '{print}' employee.txt
ajay manager account 45000
sunil clerk account 25000
varun manager sales 50000
amit manager account 47000
tarun peon sales 15000
deepak clerk sales 23000
sunil peon sales 13000
satvik director purchase 80000 
```

- Print the lines which match the given pattern
```
awk '/manager/ {print}' employee.txt - prints all the line which matches with the ‘manager’
ajay manager account 45000
varun manager sales 50000
amit manager account 47000
```

- Splitting a Line Into Fields
```
awk '{print $1,$4}' employee.txt - the awk command splits the record delimited by whitespace by default, stores it in the $n variables
ajay 45000
sunil 25000
varun 50000
amit 47000
tarun 15000
deepak 23000
sunil 13000
satvik 80000 
```

- Use of NR built-in variables
```
awk '{print NR,$0}' employee.txt - print line numbers preceding
1 ajay manager account 45000
2 sunil clerk account 25000
3 varun manager sales 50000
4 amit manager account 47000
5 tarun peon sales 15000
6 deepak clerk sales 23000
7 sunil peon sales 13000
8 satvik director purchase 80000
```

- Use of NF built-in variables
```
awk '{print $1,$NF}' employee.txt - print field1 and last field
ajay 45000
sunil 25000
varun 50000
amit 47000
tarun 15000
deepak 23000
sunil 13000
satvik 80000 
```

- Another use of NR built-in variables
```
awk 'NR==3, NR==6 {print NR,$0}' employee.txt - print line numbers preceding + print record3 and record6
3 varun manager sales 50000
4 amit manager account 47000
5 tarun peon sales 15000
6 deepak clerk sales 23000
```

- Input sample
```
cat > geeksforgeeks.txt
A    B    C
Tarun    A12    1
Man    B6    2
Praveen    M42    3
```

- To print the first item along with the row number(NR) separated with ” – “
```
awk '{print NR "- " $1 }' geeksforgeeks.txt
1 - A
2 - Tarun
3 – Manav    
4 - Praveen
```

- To return the second column/item
```
awk '{print $2}' geeksforgeeks.txt
B
A12
B6
M42
```

- To print any non empty line if present
```
awk ‘NF <= 0 {print NR}’ geeksforgeeks.txt == awk ‘NF == 0 {print NR}’ geeksforgeeks.txt
0
```

- To find the length of the longest line present in the file
```
awk '{ if (length($0) > max) max = length($0) } END { print max }' geeksforgeeks.txt
13
```

- To count the lines in a file
```
awk 'END { print NR }' geeksforgeeks.txt
```

- Printing lines with more than 10 characters
```
awk 'length($0) > 10' geeksforgeeks.txt
Tarun    A12    1
Praveen    M42    3
```

- To find/check for any string in any specific column
```
awk '{ if($3 == "B6") print $0;}' geeksforgeeks.txt
```

- To print the squares of first numbers from 1 to n say 6
```
awk 'BEGIN { for(i=1;i<=6;i++) print "square of", i, "is",i*i; }'
square of 1 is 1
square of 2 is 4
square of 3 is 9
square of 4 is 16
square of 5 is 25
square of 6 is 36
```

- Sum
```
echo "123 456" | awk '{print ($1 + $2)}'
579
```

- Sum with tr
```
echo "123-456" | tr "-" " "  |  awk '{print ($1 + $2)}'
or
echo "123-456" | awk -F '-' '{print ($1 + $2)}'
```

- Combine with if/else conditions
```
echo "a,1,1" | awk -F ',' \
'{if($2=$3){print $1","$2","$3} else {print "No duplicate"}}'
a,1,1
echo "b,3,4" | awk -F ',' \
'{if($2 == $3){print $1","$2","$3} else {print "No duplicate"}}'
No duplicate
```

- Combine with while loops
```
awk '{i=0; while(i<=NF) { print i ":"$i; i++;}}' employees.txt
```

- Combine with for loops
```
awk 'BEGIN{for(i=1; i<=10; i++) print "The square of", i, "is", i*i;}'
The square of 1 is 1
The square of 2 is 4
The square of 3 is 9
The square of 4 is 16
The square of 5 is 25
The square of 6 is 36
The square of 7 is 49
The square of 8 is 64
The square of 9 is 81
The square of 10 is 100
```

- break statement
```
awk 'BEGIN{sum = 0; for (i = 0; i < 20; ++i) { sum += i; if(sum > 50) break; else print "Sum =", sum }} '
Sum = 0
Sum = 1
Sum = 3
Sum = 6
Sum = 10
Sum = 15
Sum = 21
Sum = 28
Sum = 36
Sum = 45
```

- continue statement
  - useful when you wish to skip the processing of some data inside the loop
```
awk 'BEGIN {for (i = 1; i <= 20; ++i) {if (i % 2 == 0) print i ; else continue} }'
2
4
6
8
10
12
14
16
18
20
```

- awk patterns
```
Regular expressions
Arithmetic relational expressions
String-valued expressions
Arbitrary Boolean combinations of the expressions above
```

- Regular Expression Patterns
  - regular expression patterns are the simplest form of expressions containing a string of characters enclosed in slashes
  - the program outputs all the lines starting with "A"
```
cat <<EOF | awk '$1 ~ /^A/ {print  $1","$2","$0}'
    Alice 123
    Beta 456
    Ancantara 789
EOF
$1 means column 1
$2 means column 2
$0 means record
Alice,123,    Alice 123
Ancantara,789,    Ancantara 789
```

- Relational Expression Patterns
  - using any of the following relational operators: <, <=, ==, !=, >=, and >
```
awk 'BEGIN { a = 10; b = 10; if (a == b) print "a = b" }'
a = b
```

- Range Patterns
```
cat <<EOF | awk '/clerk/, /manager/ {print $1, $2}'
    Adeline Bird
    Weston Bradley
    Anaya Rice
    Andre Rice
    Andre Wilkins
    Ian Norris
    Omar Landry
    Harley Edwards
    Marie Snow
    Clerk Nguyen
    Clerk manager
    clerk manager
    Clerk Manager
EOF
clerk manager

cat <<EOF | awk 'BEGIN{IGNORECASE = 1} /(clerk|manager)/ {print $1, $2}'
    Adeline Bird
    Weston Bradley
    Anaya Rice
    Andre Rice
    Andre Wilkins
    Ian Norris
    Omar Landry
    Harley Edwards
    Marie Snow
    Clerk Nguyen
    Clerk manager
    clerk manager
    Clerk Manager
EOF
Clerk Nguyen
Clerk manager
clerk manager
Clerk Manager
```

- Special Expression Patterns
  - expression patterns include BEGIN and END which denote program initialization and end
  - The BEGIN pattern matches the beginning of the input, before the first record is processed
  - The END pattern matches the end of the input, after the last record has been processed
```
cat <<EOF | awk 'BEGIN { print "List of greeting:" }; {print $1, $2}; END {print "End of the greeting"}'
    hello
    hi
    greeting
EOF
List of greeting:
hello 
hi 
greeting 
End of the greeting
```

- Combine pattern
```
|| (or)
&& (and)
! (not)
cat <<EOF | awk '$2 > 10 && $3 < 20 {print $1, $2, $3}'
    Rev    Plan  Real
    shock  15    8
    shirt  20    30
EOF
shock 15 8

cat <<EOF | awk '$2 > 10 && $3 < 20 || NR==1 {print $1, $2, $3}'
    Rev    Plan  Real
    shock  15    8
    shirt  20    30
EOF
Rev Plan Real
shock 15 8
```

- exec program file
```
awk --file ./functions.awk
```