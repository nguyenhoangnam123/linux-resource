### REFERENCES ###
[chown command usage](https://www.geeksforgeeks.org/chown-command-in-linux-with-examples/)

- Ownership and Permissions: to protect and secure files and directory in Linux we use permissions to control what a user can do with a file or directory
- Linux use 3 types permissions
  - Read: allows the user to read files and in directories, it lets the user read directories and subdirectories stores in it
  - Write: This permission allows a user to modify and delete a file (create, delete and rename files in it)
  - Execute: This permission on a file allows it to get executed
- Ownership:
  - User: owner of the files
  - Group: the group which owns the file. If user is in group, user permission will higher priority than group permission
```
chown owner_name file_name: change ownership of file_name file to user owner_name
chown -c master file1.txt: report change ownership to console
chown :group1 file1.txt: change group ownership of file1.txt
chown master:group1 greek1: change owner and group owner
chown --from=master root greek1: change owner from particular ownership only
chown --from=:group1 root greek1: change owner from particular group ownership only
chown --reference=greek1 greek2: copy ownership from file greek1 to greek2
chown master:group greek2 greek3 : change ownership of multiple files
```