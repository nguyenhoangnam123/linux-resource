### REFERENCES ###
[sort command usage](https://www.geeksforgeeks.org/sort-command-linuxunix-examples/?ref=rp)

- used to sort a file, arranging the records in a particular order
- By default, the sort command sorts file assuming the contents are ASCII
- Using options in the sort command can also be used to sort numerically
- Lines starting with a number will appear before lines starting with a letter
- Lines starting with a letter that appears earlier in the alphabet will appear before lines starting with a letter that appears later in the alphabet
- Lines starting with a uppercase letter will appear before lines starting with the same letter in lowercase

Syntax
```
sort file.txt
sort -o filename.txt inputfile.txt == sort inputfile.txt > filename.txt
sort -r inputfile.txt - sorting in reverse order
sort -n filename.txt - used to sort the file with numeric data present inside
sort -k2 filename.txt - sorting file by the second column
sort -c filename.txt - This option is used to check if the file given is already sorted or not
sort -u filename.txt - sorting and removing duplicates
sort -M filename.txt - sorting by month (contents contain months)

```