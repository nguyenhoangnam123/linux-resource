### REFERENCES ###
[find command usage](https://www.geeksforgeeks.org/echo-command-in-linux-with-examples/)

1. Syntax
```
find [searched directory] [expression determines what to find] [-options] [what to find]
```

2. Options:
```
-exec CMD: The file being searched which meets the above criteria and returns 0 (exit status for successful command execution)
-ok CMD: same as -exec except the user is prompted first
-inum N: Search for files with inode number ‘N’
-links N: Search for files with ‘N’ links
-name demo: Search for files that are specified by ‘demo’
-newer file: Search for files that were modified/created after ‘file’
-perm octal : Search for the file if permission is ‘octal’
-print : Display the path name of the files found by using the rest of the criteria
-empty : Search for empty files and directories
-size +N/-N : Search for files of ‘N’ blocks; ‘N’ followed by ‘c’can be used to measure size in characters; ‘+N’ means size > ‘N’ blocks and ‘-N’ means size < ‘N’ blocks
-user name : Search for files owned by user name or ID ‘name’
\(expr \) : True if ‘expr’ is true; used for grouping criteria combined with OR or AND
! expr : True if ‘expr’ is false
```

3. Search file by name
```
find ./GFG -name sample.txt
```

4. Search a file with pattern
```
find ./GFG -name *.txt
```

5. search and delete file with confirmation
```
find ./GFG -name sample.txt -exec rm -i {} \;
```

6. search for empty file or directory
```
find ./GFG -empty
```

7. Search for file with entered permissions.
```
find ./GFG -perm 664
```

8. Search text within multiple files
```
find ./ -type f -name "*.txt" -exec grep 'Geek'  {} \;
```

9. synthetic find command
- find file or folder with case insensitive pattern in /path/to/search/location later than 1 min and earlier than 2 days then piping all matching as arg for ls -h
```
find -type -f -or -type d -iname "*caseInsensitive*" /path/to/search/location -amin +1 -ctime 2 | xargs ls -h
```
