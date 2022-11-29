### REFERENCES ###
[cut command usage](https://www.geeksforgeeks.org/cut-command-linux-examples/?ref=rp)
- The cut command in UNIX is a command for cutting out the sections from each line of files
- writing the result to standard output
- cut parts of a line by byte position, character and field
- cut command slices a line and extracts the text
- If more than one file name is provided then data from each file is not precedes by its file name

Syntax:
```
cut OPTION... [FILE]...
cut -b 1,2,3 state.txt - preserve bytes 1,2,3 each line
cut -b 1-3,5-7 state.txt - preserve range of bytes
cut -b 1- state.txt - indicate from 1st byte to end byte of a line
cut -b -3 state.txt - indicate from 1st byte to 3rd byte of a line

cut -c [(k)-(n)/(k),(n)/(n)] filename - k denotes the starting position of the character, n denotes the ending position of the character in each line, Tabs and backspaces are treated as a character
cut -c 2,5,7 state.txt - preserve character 2,5,7 each line
cut -c 1-7 state.txt - prints first seven characters of each line
cut -c 1- state.txt - prints starting from first character to end
cut -c -5 state.txt - prints starting position to the fifth character

cut -d "delimiter" -f (field number) file.txt - default delimiter is tab
cut -d " " -f 1 state.txt - delimiter is space, then prints the first column separate by space
cut -d " " -f 1,2 state.txt --output-delimiter='%' - then prints the first column separate by space + print delimiter

cat state.txt | cut -d ' ' -f 1 | sort -r - combine with sort by piping
cat state.txt | head -n 3 | cut -d ' ' -f 1 > list.txt - combine with sort by piping + redirecting
```