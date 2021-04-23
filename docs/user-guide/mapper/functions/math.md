---
description: Math functions are mapper functions that are designed to make mathematical calculations on a field.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.

___
#### Sum
```
sum(array $value):mixed
```
  Sums all value in given array and returns a number.
```
  sum([1, 2, 3]) => 6
  sum([1.2, 2.2]) => 3.4
  sum([]) => 0
```
