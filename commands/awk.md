### REFERENCES ###
[awk command usage](https://www.geeksforgeeks.org/awk-command-unixlinux-examples/)
- is a scripting language used for manipulating data and generating reports
- awk command programming language requires no compiling and allows the user to use variables, numeric functions, string functions, and logical operators
1. AWK Operations:
- Scans a file line by line
- Splits each input line into fields
- Compares input line/fields to pattern
- Performs action(s) on matched lines

2. Useful For:
- Transform data files
- Produce formatted reports

3. Programming Constructs
- Format output lines
- Arithmetic and string operations
- Conditionals and loops

4. Built-in variables
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