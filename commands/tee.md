### REFERENCES ###
[tee command usage](https://www.geeksforgeeks.org/tee-command-linux-example/)
- reads the standard input and writes it to both the standard output and one or more files

1. Syntax:
```
tee [OPTION]... [FILE]...
-a Option: It basically do not overwrite the file but append to the given file

wc -l file1.txt|tee -a file2.txt: write record length of file1 append to file2
```




