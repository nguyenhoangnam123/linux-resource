### REFERENCES ###
[ls command usage](https://www.geeksforgeeks.org/practical-applications-ls-command-linux/)

ls (list) command - list directory contents of files and directories. Some pratical examples of ls command are shown below
```
ls -t: sorts the file by modification time, newest first
ls -1: one file per line
ls -l: show long list information about file/directory
    -rw-rw-r– 1 maverick maverick 1176 Feb 16 00:19 1.c
    col1 (-rw-rw-r–):  File Permissions
    col2 (1): 1 indicates only one link to this file
    col3 (maverick): this file is owned by username ‘maverick’
    col4 (maverick): this file belongs to ”maverick’ group
    col5 (Size): ‘1176’ indicates the file size in bytes
    col6 (Last modified date and time): Feb 16 00:19 
    col7 (File name):  the file name is 1.c
ls -lh: show long list information about file/directory + human readable format
ls -d: show directory information
ls -ltr: show long list information + sorts the file by modification time + oldest first
ls -a: display all hidden contents
ls -R: display files recursively
ls -F: append indicator (one of */=>@|) to entries
    / – directory
    nothing – normal file
    @ – link file
    * – Executable file
```