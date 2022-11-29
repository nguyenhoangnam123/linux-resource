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