### REFERENCES ###
[cp command usage](https://www.geeksforgeeks.org/cp-command-linux-examples/)

Syntax
```
cp [OPTION] Source Destination - clone a file to another
cp [OPTION] Source Directory - clone dir to another
cp [OPTION] Source-1 Source-2 Source-3 Source-n Directory - copy multi source files to a directory
cp -R Src_directory Dest_directory - copy src to dest directory recursively
cp -i a.txt b.txt - overwriting the existing destination file interactively (confirm)
cp -b a.txt b.txt - overwriting the existing destination file interactively + backup of the destination file in the same folder
cp -f a.txt b.txt - overwriting the existing destination file interactively (without confirm)
cp -R Src_directory Dest_directory - copy src to dest directory recursively, even destination does not exist
cp -p a.txt c.txt - props which are inherited from source are preserved (ownership, timestamp)
cp *.txt Folder1 - expansion copy all files which have txt extension to folder Folder1
```

