### Basic format ###
```jq [options…] filter [files]``` is the basic format of jq command.
- Most common jq filters are:
  - ```.key```
  - ```.[]```
  - ```.[n]```: Nth element of array
  - ```.[n:m]```: Nth element to Mth elements of array
  - ```A,B```: run two filters A and B with the same input
  - ```A|B```: A is the input of B
  - ```(A)```: group statement
  
- Built-in operators and functions
  - array related: ```length```, ```sort```, ```sort_by(expr)```, ```group_by(expr)```, add, min, max, unique, reverse, contains, indices (s), index (s), rindex (s), combinations, combinations (s)
  - JSON field related: ```keys```, ```has(key)```, ```in```, ```getpath(PATHS)```, ```paths```
  - functions modify JSON: ```del(path)```, ```setpath(path)```, ```delpaths```, etc.
  - transform related: ```map```, ```map_values```, ```flatten```, ```range```, ```to_entries```, ```from_entries```, ```with_entries```,etc.
  - string related: ```tostring```, ```startswith```, ```endswith```, ```ltrimstr```, ```rtrimstr```, ```split(str)```, ```join(str)```, ```explode```, ```implode```
  - boolean related: ```has(key)```, ```select(expr)```, ```empty```, ```any```, ```all```, etc.
  - Math operation: ```+```, ```-```, ```floor```, ```sqrt```, ```tonumber```

- Options:
  - ```-c```: compact instead of default pretty-printed
  - ```-C```: colorize JSON
  - ```-S```: sort keys on output
  - ```-s```: read raw strings, not json texts

- Params:
  - ```-arg k v```: set var $k to value v
  - ```-slurpfile``` a f, set variable $a to an array of JSON texts read from f
  - ```-args```
  - ```-jsonargs```
