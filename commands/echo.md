### REFERENCES ###
[echo command usage](https://www.geeksforgeeks.org/echo-command-in-linux-with-examples/)

echo command in linux is used to display line of text/string
```
echo -e:  enable interpretation of backslash escapes
echo -e "Geeks \bfor \bGeeks": \b remove all spaces between words
echo -e "Geeks \cfor Geeks": \c suppress trailing new line with backspace interpreter
echo -e "Geeks \nfor \nGeeks": \n creates new line from where it is used
echo -e "Geeks \tfor \tGeeks": \t used to create horizontal tab spaces
echo -e "Geeks \rfor \tGeeks": \r does not print content before \r
echo *: print all files and folders
echo -n "Geeks for Geeks": omit echoing trailing newline
```