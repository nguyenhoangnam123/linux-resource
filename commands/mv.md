### REFERENCES ###
[mv command usage](https://www.geeksforgeeks.org/mv-command-linux-examples/)

Syntax
```
mv [Option] source destination
mv -i geek.txt b.txt - change file name interactively (confirm)
mv -f geek.txt b.txt - overwrites the destination file forcefully and deletes the source file, even source file is write-protected
mv -n geek.txt b.txt - prevent an existing file from being overwritten.
cp -b a.txt b.txt - overwriting the existing destination file interactively + backup of the destination file in the same folder
```