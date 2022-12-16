### Characters ###

| Special Character | Usage
| -- | ----
| .  | Matches any single character except newline. In awk, dot can match newline also
| *  | Matches any number (including zero) of the single character (including a character specified by a regular expression) that immediately precedes it
| [ . . . ] | - Matches any one of the class of characters enclosed between the brackets. <br/> - A circumflex (```ˆ```) as first character inside brackets reverses the match to all characters except newline and those listed in the class. <br /> - A hyphen (```-```) is used to indicate a range of characters
| $ | As last character of regular expression, matches the end of the line. Matches the end of a string in awk, ```even if the string contains embedded newlines```
| ```\{n,m\}``` | Matches a range of occurrences of the single character (including a character specified by a regular expression)  that immediately precedes it <br/>. -  ```\{n\}``` will match exactly n occurr ences <br />. - ```\{n,\}``` will match at least n occurr ences <br /> - ```\{n,m\}``` will match any number of occurrences between n and m. (sed and grep only, may not be in some very old versions.)
| + | Matches one or more occurr ences of the preceding regular expression
| ? | Matches zero or one occurrences of the preceding regular expression
| \| | Specifies that either the preceding or following regular expression can be matched (alternation)
| ( )  | Groups regular expressions
| {n,m} | |


### Write regex ###
1. Character Classes
-  is a refinement of the wildcard concept.
-  Instead of matching any
character at a specific position, we can list the characters to be matched
- The square bracket metacharacters ([ ]) enclose the list of characters, any of which can occupy a single position
```
[Ww]hat - what, What
\.H[12345] - .H1, H2, etc.
```
- Special character in character class 
<br/>

| Special Character | Usage
| -- | ----
| \ | Escapes any special character (awk only)
| - | Indicates a range when not in the first or last position.
| ˆ | Indicates a reverse match only when in the first position.
<br />

- POSIX character class additions
The POSIX standard formalizes the meaning of regular expression characters and operators <br />

| Class | Matching Characters
| -- | --
| [:alnum:] | Printable characters (includes whitespace)
| [:alpha:] | Alphabetic characters
| [:blank:] | Space and tab characters
| [:cntrl:] | Control characters
| [:digit:] | Numeric characters
| [:graph:] | Printable and visible (non-space) characters
| [:lower:] | Lowercase characters
| [:print:] | Printable characters (includes whitespace)
| [:punct:] | Punctuation characters
| [:space:] | Whitespace characters
| [:upper:] | Uppercase characters
| [:xdigit:] | Hexadecimal digits

- Positional Metacharacters
  - In sed (and gr ep), ```ˆ``` and ```$``` are only special when they occur at the beginning or end of a regular expression
  - In awk, it’s differ ent; ```ˆ``` and ```$``` are always special, even though it then becomes possible to write regular expressions that don’t match anything
  - In awk, you should always escape it with a backslash, no matter what its position in the regular expression
```
ˆ• - print lines that begin with a tab
. - print any line containing a tab
ˆ\. - print line preceded by a dot
*$ - print line matching more before end
ˆ$ - blank line
```

- A Span of Characters
  - specify repeated occurrences of a character (*+?) indicate a span of undetermined length
  - ```\{ and \}``` are available in gr ep and sed. POSIX egrep and POSIX awk use { and }
```
11*0
10
110
111110
1111111111111111111111111110

10\{2,4\}1
1001
10001
100001

[0-9]\{3\}-[0-9]\{2\}-[0-9]\{4\}
123-45-6789
```

- Alternative Operations
  - The vertical bar ```|```allows you to specify a union of regular expressions metacharacter, part of the extended set of metacharacters. 

- Grouping Operations
  - Par entheses, ```( )```, are used to group regular expressions and establish precedence
```
egrep "Lab(oratorie)?s" mail.list
Bell Laboratories, Lucent Technologies
Bell Labs

compan(y|ies) - company, companies
```

- Examples: (ˆ| )```[\"[{(]```\*book```[]})\"?!.,;:’s]```\*( |$)
```
This file tests for book in various places, such as
as well as the plural books and
A great book? No.
told them about (the books) until it
Here are the books that you requested
Yes, it is a good book for children
amazing that it was called a "harmful book" when
once you get to the end of the book, you can’t believe
```

- Limiting the Extent
```
.Se "Appendix" "Full Program Listings" - consider this

".*": match any number of characters inside of quotation marks
"Appendix"
"Appendix" "Full Program Listings"

"[ˆ"]*": matches the shortest possible extent between two
quotation marks
"Appendix"

1........5
5........10
10.......20
100......200
[0-9][0-9]*\.\{5,\}[0-9][0-9]*
```


