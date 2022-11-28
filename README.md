[bash variable references](https://stackoverflow.com/questions/5163144/what-are-the-special-dollar-sign-shell-variables)
```
$1, $2, $3, ... are the positional parameters.
"$@" is an array-like construct of all positional parameters, {$1, $2, $3 ...}.
"$*" is the IFS expansion of all positional parameters, $1 $2 $3 ....
$# is the number of positional parameters.
$- current options set for the shell.
$$ pid of the current shell (not subshell).
$_ most recent parameter (or the abs path of the command to start the current shell immediately after startup).
$IFS is the (input) field separator.
$? is the most recent foreground pipeline exit status.
$! is the PID of the most recent background command.
$0 is the name of the shell or shell script.
```

- Expansions
- Useful examples:
  - get the OS details (eg. name,version etc)
    ```
    cat /etc/os-release
    ```
  - get the process owner details
    ```
    ps aux | grep "process_name"
    ```
  - get the all the users list
    ```
    cut -d: -f1 /etc/passwd
    ```
  - get the filesystem details
    ```
    df -h
    ```
  - get the OS name, machine name and kernal
    ```
    uname -a
    ```
  - download files from the web url
    ```
    wget
    ```
  - check the network interfaces
    ```
    ifconfig
    ```
  - list all network ports, routing tables, sockets and connection details
    ```
    netstat -a
    netstat -atu: check open tcp ports
    netstat -lntup: open tcp as well as udp ports that are listening along with their process ids
    ```