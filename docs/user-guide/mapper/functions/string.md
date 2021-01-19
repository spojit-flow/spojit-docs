---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
### Trim
```
trim(string $value, string $type, [string $charmask]) : string
```
  Strips whitespaces or other characters from a string.

  If __\$type__ is "both", strips strips characters from both start and end of a string. If __\$type__ is "start", strips characters from the start of a string. If __\$type__ is "end", strips characters from the end of a string.

  __\$charmask__ allows you to specify the characters you want to strip from a string. If not provided, Trim will strip the following characters by default:

  *  " " (ASCII 32 (0x20)), an ordinary space.
  *  "\t" (ASCII 9 (0x09)), a tab.
  *  "\n" (ASCII 10 (0x0A)), a new line (line feed).
  *  "\r" (ASCII 13 (0x0D)), a carriage return.
  *  "\0" (ASCII 0 (0x00)), the NUL-byte.
  *  "\v" (ASCII 11 (0x0B)), a vertical tab.

```
  trim("Hello World", "both", "Hdle") => "o Wor"
  trim("\t\tThese are few words :) ...  ", "both") => "These are a few words :) ..."
  trim("\t\tThese are few words :) ...  ", "both", " \t.") => "These are a few words :)"
  trim("00000123", "start", "0") => "123"
  trim("00000123", "end", "3") => "0000012"
```
___
### To Lower
```
toLower(string $value) : string
```
  Makes a string lowercase. Returns string with all alphabetic characters converted to lowercase.
```
  toLower("Hello World") => "hello world"
  toLower("Mary Had A Little Lamb") => "mary had a little lamb"
```
___
### To Upper
```
toUpper(string $value) : string
```
  Makes a string uppercase. Returns string with all alphabetic characters converted to uppercase.
```
  toUpper("Hello World") => "HELLO WORLD"
  toUpper("Mary Had A Little Lamb") => "MARY HAD A LITTLE LAMB"
```
___
### Substring
```
substring(string $value, int $start, [int $length]) : string
```
  Returns part of a string specified by the __\$start__ and optional __\$length__ parameters.

  If __\$start__ is non-negative, the returned string will start at the __\$start'th__ position in string, counting from zero. For instance, in the string 'abcdef', the character at position 0 is 'a', the character at position 2 is 'c', and so forth.

  If __\$length__ is given and is 0, an empty string will be returned. If __\$length__ is omitted, a string starting from __\$start__ until the end of the string will be returned.

  If __\$start__ is negative, the returned string will start at the __\$start'th__ character from the end of string.

  If __\$value__ is less than $start characters long, false will be returned.
```
  substr("abcdef", -1) => "f"
  substr("abcdef", -2) => "ef"
  substr("abcdef", -3, 1) => "d"
  substr("abcdef", 0, -1) => "abcde"
  substr("abcdef", 2, -1) => "cde"
  substr("abcdef", 4, -4) => false
  substr("abcdef", -3, -1) => "de"
```
___
### String Replace
```
str_replace(string $search, string $replace, string $value) : string
```
  Replaces all occurrences of the search string with the replacement string.

  __\$search__ is the value being searched for in given string, otherwise known as the needle.

  __\$replace__ is the replacement value that replaces found __\$search__ value.

```
  str_replace("0", "", "000123000") => "123"
  str_replace("%body%", "black", "<body text='%body%'>") => "<body text='black'>"
```
___
### Explode
```
explode(string $value, string $delimiter, [int $limit, int $returnIndex]) : string
```
  Splits a string into chunks by given __\$delimiter__. Returns an array of strings, each of which is a substring of string formed by splitting it on boundaries formed by the string __\$delimiter__.

  If __\$delimiter__ is an empty string (""), explode will return false. If __\$delimiter__ contains a value that is not contained in string and a negative limit is used, then an empty array will be returned, otherwise an array containing __\$value__ will be returned.

  If __\$limit__ is set and positive, the returned array will contain a maximum of __\$limit__ elements with the last element containing the rest of string. If the __\$limit__ parameter is negative, all components except the last __\-$limit__ are returned.

  If __\$returnIndex__ is set, explode will return the index value of the array.

```
  explode("piece1 piece2 piece3", " ") => ["piece1", "piece2", "piece3"]
  explode("piece1 piece2 piece3", " ", 2) => ["piece1", "piece2 piece3"]
  explode("piece1 piece2 piece3", " ", -1) => ["piece1", "piece2"]
  explode("piece1 piece2 piece3", " ", 2, 0) => "piece1"
  explode("piece1 piece2 piece3", " ", 2, 1) => "piece2 piece3"
```
___
### Substring Count
```
substr_count(string $value, string $search) : int
```
  Counts the number of substring occurrences in given string. Returns a number (integer) - the count of __\$search__ occurences.

  This function doesn't count overlapped substrings.
```
  substr_count("This is a test", "test") => 1
  substr_count("This is a test", "is") => 2
  substr_count("gcdgcdgcd", "gcdgcd") => 1 (does not count overlapped substrings)
```
___
### Format String
```
str_format(string $value, string $format) : string
```
  Returns a string produced according to the formatting string __\$format__, or false on failure.

  The __\$format__ string is composed of zero or more directives: ordinary characters (excluding %) that are copied directly to the result and conversion specifications, each of which results in fetching its own parameter.

  A conversion specification follows this prototype: %\[argnum$]\[flags]\[width]\[.precision]specifier.

  __argnum__ is an integer followed by a dollar sign $, to specify which number argument to treat in the conversion.

| Flag | Description |
| ----------- | ----------- |
| - | Left-justify within the given field width; Right justification is the default |
| + | Prefix positive numbers with a plus sign +; Default only negative are prefixed with a negative sign. |
| (space) | Pads the result with spaces. This is the default. |
| 0 | Only left-pads numbers with zeros. With s specifiers this can also right-pad with zeros. |
| '(char) | Pads the result with the character (char). |

  __width__ is an integer that says how many characters (minimum) this conversion should result in.

  __precision__ - a period . followed by an integer who's meaning depends on the specifier:

  * For e, E, f and F specifiers: this is the number of digits to be printed after the decimal point (by default, this is 6).
  * For g and G specifiers: this is the maximum number of significant digits to be printed.
  * For s specifier: it acts as a cutoff point, setting a maximum character limit to the string.

| Specifier | Description |
| ----------- | ----------- |
| % | A literal percent character. No argument is required. |
| b | The argument is treated as an integer and presented as a binary number. |
| c | The argument is treated as an integer and presented as the character with that ASCII. |
| d | The argument is treated as an integer and presented as a (signed) decimal number. |
| e | The argument is treated as scientific notation (e.g. 1.2e+2). The precision specifier stands for the number of digits after the decimal point |
| E | Like the e specifier but uses uppercase letter (e.g. 1.2E+2). |
| f | The argument is treated as a float and presented as a floating-point number (locale aware). |
| F | The argument is treated as a float and presented as a floating-point number (non-locale aware). |
| g | General format. Let P equal the precision if nonzero, 6 if the precision is omitted, or 1 if the precision is zero. Then, if a conversion with style E would have an exponent of X: If P > X ≥ −4, the conversion is with style f and precision P − (X + 1). Otherwise, the conversion is with style e and precision P − 1. |
| G | Like the g specifier but uses E and f. |
| o | The argument is treated as an integer and presented as an octal number. |
| s | The argument is treated and presented as a string. |
| u | The argument is treated as an integer and presented as an unsigned decimal number. |
| x | The argument is treated as an integer and presented as a hexadecimal number (with lowercase letters). |
| X | The argument is treated as an integer and presented as a hexadecimal number (with uppercase letters). |

| Type | Specifier |
| ----------- | ----------- |
| string | s |
| integer | d, u, c, o, x, X, b |
| double | g, G, e, E, f, F |

```
  str_format("5", "There are %s monkeys in the tree.") => "There are 5 monkeys in the tree."
  str_format("123", "%'.9d") => "......123"
  str_format("123", "%'.09d') => "000000123"
  str_format("123.1", "%01.2f") => "123.10"
  str_format("362525200", "%.3e") => "3.625e+8"
```
___
### Split
```
split(string $value, [int $length)] : array
```
  Splits a string __\$value__ into chunks and returns all chunks as an array (converts string to an array).

  __\$length__ is the maximum length of each chunk after split. If __\$length__ is omitted, each chunk will be a single character long.
  
```
  split("string") => ["s", "t", "r", "i", "n", "g"]
  split("string", 2) => ["st", "ri", "ng"]
```
___
### Regex Match
```
regex_match(string $value, string $pattern, int $matchIndex) : string
```
  Performs a regular expression search of __\$value__ by __\$pattern__ specified. Returns found match by the __\$matchIndex__.

  __\$pattern__ is the pattern to search for in given string.

| Pattern | Description |
| ----------- | ----------- |
| \[abc] | A single character: a, b, or c |
| \[^abc] | Any single character but a, b, or c |
| \[a-z] | Any single character in the range a-z |
| \[a-zA-Z] | Any single character in the range a-z or A-Z |
| ^ | Start of line |
| $ | End of line |
| \A | Start of string |
| \z | End of string |
| . | Any single character |
| \s | Any whitespace character |
| \S | Any non-whitespace character |
| \d | Any digit |
| \D | Any non-digit |
| \w | Any word character (letter, number, underscore) |
| \W | Any non-word character |
| \b | Any word boundary character |
| (...) | Capture everything enclosed |
| (a\|b) | a or b |
| a? | Zero or one of a |
| a* | Zero or more of a |
| a+ | One or more of a |
| a{3} | Exactly 3 of a |
| a{3,} | 3 or more of a |
| a{3,6} | Between 3 and 6 of a |
  
```
  regex_match("foobar: 2008", "/(\w+): (\d+)/", 0) => "foobar: 2008"
  regex_match("foobar: 2008", "/(\w+): (\d+)/", 1) => "foobar"
  regex_match("foobar: 2008", "/(\w+): (\d+)/", 2) => "2008"

  regex_match("http://www.spojit.com/index.html", "@^(?:http://)?([^/]+)@i", 1) => "www.spojit.com"
  regex_match("www.spojit.com", "/[^.]+\.[^.]+$/", 0) => "spojit.com"
```
___
### Regex Replace
```
regex_replace(string $value, string $pattern, string $replacement, [integer $limit]) : string
```
  Searches __\$value__ for matches to __\$pattern__ and replaces them with __\$replacement__.
  
  __\$pattern__ must include a delimiter - forward slash '/' is recommended. Example: /searchme/ would search for any occurence of 'searchme' in given text and replace them with the __\$replacement__.

  __\$pattern__ is the pattern to search for specified as a string enclosed in a delimiter (use forward slash /).

  __\$limit__ specifies the maximum possible replacements of matched __\$pattern__ in given __\$value__. Defaults to -1 (unlimited) - all found occurences will be replaced.

| Special character | Description |
| ----------- | ----------- |
| \ | Quote the next metacharacter |
| ^ | Match the beginning of the line |
| . | Match any character (except newline) |
| $ | Match the end of the line (or before newline at the end) |
| \| | Alternation (or) |
| ( ) | Group |
| \[ ] | Character class |
| * | Match 0 or more times |
| + | Match 1 or more times |
| ? | Match 1 or 0 times |
| {n} | Match exactly n times |
| {n,} | Match at least n times |
| {n,m} | Match at least n but no more than m times |

```
  regex_replace("The quick brown fox.", "/quick/", "slow") => "The slow brown fox."
  
  //strip excess whitespaces
  regex_replace("foo   o", "/\s\s+/", " ") => "foo o"
  
  //remove all characters except for numbers and letters
  regex_replace("D'usseldorfer H'auptstrasse", "/[^A-Za-z0-9_]/") => "Dusseldorfer Hauptstrasse"
  regex_replace("April 15, 2003", "/(\w+) (\d+),(\d+)/i", "${1}1,$3") => "April1,2003"
```