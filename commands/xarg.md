### REFERENCES ###
[xarg command usage](https://www.geeksforgeeks.org/xargs-command-unix/)
- used to build and execute commands from standard input
- grep can accept input as parameters, xargs accepts input as arguments
1. Syntax
```
xargs [options] [command]
```

2. Options
```
-0 : input items are terminated by null character instead of white spaces
-a file : read items from file instead of standard input
–delimiter = delim : input items are terminated by a special character
-E eof-str : set the end of file string to eof-str
-I replace-str : replace occurrences of replace-str in the initial arguments with names read from standard input
-L max-lines : use at-most max-lines non-blank input lines per command line.
-p : prompt the user about whether to run each command line and read a line from terminal
-r : If the standard input does not contain any nonblanks, do not run the command
-x : exit if the size is exceeded
```

3. Input sample
```
cat test.txtfile1
file2
file3
file4
```

4. show contents of file
```
xargs -a test.txt
file1
file2
file3
file4
```

5. prompts for confirmation before running each command line
```
xargs -p  -a test.txt
echo file1 file2 file3 file4 ?...y
file1 file2 file3 file4
```

1. combine with find command
```
find -type -f -or -type d -iname "*caseInsensitive*" /path/to/search/location -amin +1 -ctime 2 | xargs ls -h
```