### REFERENCES ###
[chmod command usage](https://www.geeksforgeeks.org/chown-command-in-linux-with-examples/)

- Change mod: ```chmod [reference][operator][mode] file... ```
  
| Reference | Class | Description |
| ----------- | ----------- | ----------- | 
| u (user) | owner | file's owner |
| g (group) | group | users who are members of the file's group |
| o (other) | others | users who are neither the file's owner nor members of the file's group |
| a (all) | all | All three of the above, same as ugo |
<br />

| Reference | Numeric | Description |
| ----------- | ----------- | ----------- |
| - | 0 | No permission to the file |
| r (read only) | 4 | Permission to read the file |
| w (write only) | 2 | Permission to write (or delete) the file |
| x (execute only) | 1 | Permission to execute the file |
| wx (write + execute) | 2 + 1 = 3 | Permission to write + execute the file |
| rx (read + execute) | 4 + 1 = 5 | Permission to read + execute the file |
| wr (read + write) | 4 + 2 = 6 | Permission to read + write the file |
| wrx (read + write + execute) | 4 + 2 + 1 = 7 | Full Permission to the file |
<br />


| Reference | Description |
| ----------- | ----------- | 
| + (add) | add specified mode to the specified class (Eg: u+x) |
| - (remove) | remove specified mode to the specified class (Eg: a-x) |
| = (exact) | set exact modes (override old modes) |
<br />

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