### REFERENCES ###
[sed command usage](https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/)
- stands for stream editor and it can perform lots of functions on file like searching, find and replace, insertion or deletion

1. Syntax
```
sed OPTIONS... [SCRIPT] [INPUTFILE...]
```

2. Input sample
```
cat > geekfile.txt
unix is great os. unix is opensource. unix is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
```

3. Replacing or substituting string
- By default, the sed command replaces the first occurrence of the pattern in each line and it won’t replace the second, third…occurrence in the line
```
sed 's/unix/linux/' geekfile.txt
linux is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
```

4. Replacing the nth occurrence of a pattern in a line
- Use the /1, /2 etc flags to replace the first, second occurrence of a pattern in a line
```
sed 's/unix/linux/2' geekfile.txt
unix is great os. linux is opensource. unix is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.linux is a multiuser os.Learn unix .unix is a powerful.
```

5. Replacing all the occurrence of the pattern in a line
```
linux is great os. linux is opensource. linux is free os.
learn operating system.
linux linux which one you choose.
linux is easy to learn.linux is a multiuser os.Learn linux .linux is a powerful.
```

6. Replacing from nth occurrence to all occurrences in a line
```
sed 's/unix/linux/3g' geekfile.txt
unix is great os. unix is opensource. linux is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn linux .linux is a powerful.
```

7. Parenthesize first character of each word
```
echo "Welcome To The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'
(W)elcome (T)o (T)he (G)eek (S)tuff
```

8. Replacing string on a specific line number
```
sed '3 s/unix/linux/' geekfile.txt
unix is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
```

9. Duplicating the replaced line with /p flag
```
sed 's/unix/linux/p' geekfile.txt
linux is great os. unix is opensource. unix is free os.
linux is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
linux linux which one you choose.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
```

10. Printing only the replaced lines
Use the -n option along with the /p print flag to display only the replaced lines
```
sed -n 's/unix/linux/p' geekfile.txt
```

11. Replacing string on a range of lines
```
sed '1,3 s/unix/linux/' geekfile.txt
linux is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.

$sed '2,$ s/unix/linux/' geekfile.txt - $ indicates the last line in the file
```

12. Deleting lines from a particular file
```
sed '5d' filename.txt - delete line 5 in filename.txt
sed '$d' filename.txt - delete last line in filename.txt
sed '3,6d' filename.txt - delete line3 to line6 in filename.txt
sed '12,$d' filename.txt - delete line12 to last line filename.txt
```

13. Multi instructions
- Separate instructions with a semicolon
```
sed ’s/ MA/, Massachusetts/; s/ PA/, Pennsylvania/’ list
```

- Precede each instruction by -e <br/>
option -e is helpful when syntax of instruction is wrong
```
sed -e ’s/ MA/, Massachusetts/’ -e ’s/ PA/, Pennsylvania/’ list
```

14. Use sed with separate script file
```
sed -f scriptfile file
sed -f commands/scripts/command.txt commands/scripts/sample.txt
```

15. sed address
```
d - delete all lines
1d - delete the first line
$d - delete the last line
/ˆ$/d - delete blank line
50,$d - delete from line 50 to the last
1,/ˆ$/d - delete from the first line to the first blank line
/ˆ\.TS/,/ˆ\.TE/!d - delete all except matching
/ˆ\.TS/,/ˆ\.TE/{/ˆ$/d} - curly bracket define nested pattern inside other
/ˆ\.TS/,/ˆ\.TE/{
    /ˆ$/d/ 
    s/ˆ\.ps 10/.ps 8/ 
    s/ˆ\.vs 12/.vs 10/
}
```

16. subsituation
```
address]s/pattern/replacement/flags
- n: a number (1 to 512) indicating that a replacement should be made for only the n th occurrence of the patter n
- g: Make changes globally on all occurrences in the pattern space. Normally only the first occurrence is replaced
- p Print the contents of the pattern space.
- w Write the contents of the pattern space to file
- regular expression can be delimited by any character except a newline
replacement:
& - Replaced by the string matched by the regular expression
\n -  Matches the n th substring (n is a single digit) previously specified in the pattern using “\(” and “\)” (\1, \2, etc)
\ - Used to escape the &, the \,  the substitution command’s delimiter
```

17. examples
```
cat <<EOF | awk 'NR > 1 {print $0}' | sed -e "/Nguyen /s/VND/$/g" 
    Name        Age   Salary   Password
    Nam         28    2000$    5r9Gg9ye8n
    Nguyen Nam  29    3000VND    123456Abc1@
EOF
Nam         28    2000$    5r9Gg9ye8n
Nguyen Nam  29    3000$    123456Abc1@


echo ".Ah \"Major Heading\"" | sed -e "/^\.Ah */ { s/\.Ah */Hello /g }"
Hello "Major Heading"

echo ".Ah \"Major Heading\"" | sed -e "/^\.Ah */ { s/\.Ah */@A HEAD=/; s/\"//g }"
@A HEAD=Major Heading

cat << EOF | sed 's/\(.*\):\(.*\)/\2:\1/'
    first:second
    one:two
EOF

echo "on the UNIX Operating System." | sed "s/UNIX/\\s-2&\\s0/g"
on the \s-2&\s0 Operating System.

echo ".Ah \"Major Heading\"" | sed -e "/^\.Ah */ { p; s/\"//g; p; s/^.Ah //g; }"
.Ah "Major Heading"
.Ah Major Heading
Major Heading

echo "on the UNIX Operating System." | sed "s/UNIX/\\s-2&\\s0/g"
on the \s-2UNIX\s0 Operating System.
```