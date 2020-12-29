---
template: overrides/main.html
---

___
#### Current Datetime
```
datetime_current(string $timezone, string $format, [string $modification]):string
```
  Produces current datetime (now) in specified __\$timezone__ and __\$format__. Returns the resulting datetime as a string. Optionally modifies the return string datetime by __\$modification__.

  __\$modification__ is a textual representation; ie. "+1 day" would add one day to the datetime, "+1 hour" would add one hour to the datetime, "-2 years" would subtract two years, and so forth.

  | Format | Description | Example |
| ----------- | ----------- | ----------- |
| Y | Four digit year | 2020 |
| y | Two digit year | 20 |
| M | Three character month | Jan |
| m | Two digit month | 01 |
| F | A full textual representation of a month, such as January or March | January through December |
| n | Numeric representation of a month, without leading zeros | 1 through 12 |
| D | Three character day | Sat |
| d | Two digit day | 12 |
| j | Day of the month without leading zero | 1 to 31 |
| l | A full textual representation of the day of the week | Saturday |
| N | ISO-8601 numeric representation of the day of the week | 1 (for Monday) through 7 (for Sunday)  |
| h | 12-hour format of an hour with leading zeros | 01 through 12 |
| H | Hour in 24 hour format with leading zero | 06 or 18 |
| i | Minutes with leading zeros | 00 to 59  |
| s | Seconds with leading zeros | 00 to 59 |
| u | Microseconds | 654321 |
| v | Miliseconds | 654 |
| e | Timezone identifier | UTC or GMT or Atlantic/Azores |
| O | Difference to Greenwich time (GMT) without colon between hours and minutes | +0200 |
| P | Difference to Greenwich time (GMT) with colon between hours and minutes | +00:00 or +10:00  |
| p | The same as P, but returns Z instead of +00:00 |
| T | Timezone abbreviation | EST or MDT |
| S | English ordinal suffix for the day of the month, 2 characters | st, nd, rd or th. Works well with j  |
| w | Numeric representation of the day of the week | 0 (for Sunday) through 6 (for Saturday)  |
| W | ISO-8601 week number of year, weeks starting on Monday | Example: 42 (the 42nd week in the year) |
| t | Number of days in the given month | 28 through 31 |
| a | Lowercase Ante meridiem and Post meridiem | am or pm |
| A | Uppercase Ante meridiem and Post meridiem | AM or PM |
| B | Swatch internet time | 000 through 999 |
| g | 12-hour format of an hour without leading zeros | 1 through 12 |
| G | 24-hour format of an hour without leading zeros | 1 through 23 |
| Z | Timezone offset in seconds. The offset for timezones west of UTC is always negative, and for those east of UTC is always positive. | -43200 through 50400 |
| c | ISO 8601 date | 2004-02-12T15:19:21+00:00 |
| r | RFC 2822 formatted date | Thu, 21 Dec 2000 16:01:07 +0200 |
| U | Seconds since the Unix Epoch (January 1 1970 00:00:00 GMT) | 1607759234 |

```
  datetime_current("UTC", "d M Y H:i:s") => "12 Jan 2020 18:55:01"
  datetime_current("UTC", "d M Y H:i:s", "-1 day") => "11 Jan 2020 18:55:01"
  datetime_current("UTC", "d M Y H:i:s", "+1 hour") => "12 Jan 2020 19:55:01"
  datetime_current("UTC", "d M Y H:i:s", "+1 minute") => "12 Jan 2020 18:56:01"
  datetime_current("UTC", "d M Y H:i:s", "+30 seconds") => "12 Jan 2020 18:56:31"
  datetime_current("UTC", "c") => "2020-01-12T18:55:01+00:00"
  datetime_current("Australia/Sydney", "c") => "2020-01-13T05:55:01+11:00"
```
___
#### Modify Datetime
```
datetime_modify(string $value, string $inputTimezone, string $inputFormat, string $outputTimezone, string $outputFormat, [string $modification]):string
```
  Loads a string datetime from __\$value__ in specified __\$inputTimezone__ and __\$inputFormat__, converts that __\$value__ into __\$outputTimezone__ and __\$outputFormat__. If __\$modification__ is specified, __\$value__ is modified by __\$modification__ string before returning.

  __\$modification__ is a textual representation; ie. "+1 day" would add one day to the datetime, "+1 hour" would add one hour to the datetime, "-2 years" would subtract two years, and so forth.

  | Format | Description | Example |
| ----------- | ----------- | ----------- |
| Y | Four digit year | 2020 |
| y | Two digit year | 20 |
| M | Three character month | Jan |
| m | Two digit month | 01 |
| F | A full textual representation of a month, such as January or March | January through December |
| n | Numeric representation of a month, without leading zeros | 1 through 12 |
| D | Three character day | Sat |
| d | Two digit day | 12 |
| j | Day of the month without leading zero | 1 to 31 |
| l | A full textual representation of the day of the week | Saturday |
| N | ISO-8601 numeric representation of the day of the week | 1 (for Monday) through 7 (for Sunday)  |
| h | 12-hour format of an hour with leading zeros | 01 through 12 |
| H | Hour in 24 hour format with leading zero | 06 or 18 |
| i | Minutes with leading zeros | 00 to 59  |
| s | Seconds with leading zeros | 00 to 59 |
| u | Microseconds | 654321 |
| v | Miliseconds | 654 |
| e | Timezone identifier | UTC or GMT or Atlantic/Azores |
| O | Difference to Greenwich time (GMT) without colon between hours and minutes | +0200 |
| P | Difference to Greenwich time (GMT) with colon between hours and minutes | +00:00 or +10:00  |
| p | The same as P, but returns Z instead of +00:00 |
| T | Timezone abbreviation | EST or MDT |
| S | English ordinal suffix for the day of the month, 2 characters | st, nd, rd or th. Works well with j  |
| w | Numeric representation of the day of the week | 0 (for Sunday) through 6 (for Saturday)  |
| W | ISO-8601 week number of year, weeks starting on Monday | Example: 42 (the 42nd week in the year) |
| t | Number of days in the given month | 28 through 31 |
| a | Lowercase Ante meridiem and Post meridiem | am or pm |
| A | Uppercase Ante meridiem and Post meridiem | AM or PM |
| B | Swatch internet time | 000 through 999 |
| g | 12-hour format of an hour without leading zeros | 1 through 12 |
| G | 24-hour format of an hour without leading zeros | 1 through 23 |
| Z | Timezone offset in seconds. The offset for timezones west of UTC is always negative, and for those east of UTC is always positive. | -43200 through 50400 |
| c | ISO 8601 date | 2004-02-12T15:19:21+00:00 |
| r | RFC 2822 formatted date | Thu, 21 Dec 2000 16:01:07 +0200 |
| U | Seconds since the Unix Epoch (January 1 1970 00:00:00 GMT) | 1607759234 |

```
  datetime_modify("12 Jan 2020 18:55:01", "UTC", "d M Y H:i:s", "UTC", "Y-m-d") => "2020-01-12"
  datetime_modify("12 Jan 2020 18:55:01", "UTC", "d M Y H:i:s", "UTC", "Y-m-d", "+1 day") => "2020-01-13"
  datetime_modify("12 Jan 2020 18:55:01", "UTC", "d M Y H:i:s", "Australia/Sydney", "Y-m-d") => "2020-01-13"
```
