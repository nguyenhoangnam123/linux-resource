### REFERENCES ###
[cat command usage](https://www.geeksforgeeks.org/cat-command-in-linux-with-examples/#:~:text=Cat(concatenate)%20command%20is%20very,create%2C%20view%2C%20concatenate%20files.)

Cat (concatenate) command - it reads data from the file and gives their content as output
```
cat /path/to/filename.ext - single file
cat /path/to/filename1.ext /path/to/filename2.ext - multiple files
cat -n /path/to/filename.ext - print line with preceding line numbers
cat /path/to/filename1.ext > /path/to/filename2.ext - copy contents of filename1 to filename2
cat /path/to/filename1.ext >> /path/to/filename2.ext - append contents of filename1 to filename2
cat -s /path/to/filename1.ext - suppress repeated empty line in output
tac /path/to/filename.ext - print contents of a file in reverse order
cat -E - highlight the end of line
cat -A == cat -vET (E == --show-ends, v == --show-nonprinting, -T == --show-tabs)
cat /path/to/filename.ext | more - ask to show more
cat "filename1" "filename2" "filename3" > "merged_filename" - merge content of filename1, filename2, filename3 to merged_filename
cat *.txt - print content of all txt files
```