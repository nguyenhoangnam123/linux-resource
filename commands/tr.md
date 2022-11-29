### REFERENCES ###
[tr command usage](https://www.geeksforgeeks.org/tr-command-in-unix-linux-with-examples/)
- command line utility for translating or deleting characters
- tr stands for translate

1. Syntax
```
tr [OPTION] SET1 [SET2]
-c : complements the set of characters in string.i.e., operations apply to characters not in the given set
-d : delete characters in the first set from the output
-s : replaces repeated characters listed in the set1 with single occurrence
-t : truncates set1
```

2. Sample input
```
cat greekfile
WELCOME TO 
GeeksforGeeks
```

3. How to convert lower case to upper case
```
cat greekfile | tr “[a-z]” “[A-Z]” == cat geekfile | tr “[:lower:]” “[:upper:]”
WELCOME TO
GEEKSFORGEEKS
```

4. Translate whitespace to tab
```
echo "Welcome To GeeksforGeeks" | tr [:space:] '\t'
Welcome    To    GeeksforGeeks
```

5. Translate braces into parenthesis
```
tr '{}' '()'   newfile.txt
```

6. squeeze repetition of characters using -s
```
echo "Welcome    To    GeeksforGeeks" | tr -s [:space:] ' '
Welcome To GeeksforGeeks
```

7. delete specified characters using -d option
```
echo "Welcome To GeeksforGeeks" | tr -d 'w'
elcome To GeeksforGeeks
```

8. remove all the digits from the string
```
echo "my ID is 73535" | tr -d [:digit:]
my ID is
```

9. complement the sets using -c option
```
echo "my ID is 73535" | tr -cd [:digit:] - take the complement, not the selection
73535
```

