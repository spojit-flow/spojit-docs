---
description: Formula functions are mapper functions that are designed to make various formulas on a field.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.

___
#### Break Sequence
```
break(mixed $value, array $condtions)
```
  Will break (stop) functions from processing if conditions are not met. Uses the last functions' chain data and will pass that data to the next function if valid.  If a default value is entered that will be returned to the field if the function sequence fails.
```
  break(56, [{"operator": "eq", "value": 56}]) => WILL CONTINUE
  break("pendingOrder", [{"operator": "neq", "value": "pendingOrder"}]) => WILL NOT CONTINUE
```
___
#### Formula
```
formula(string $value)
```
  Create a custom formula to transform the field using common Excel syntax.  Adding "{{ this }}" will enter the value of the field or previous function.  Double quotes need to be around strings.

  A full list of functions is available at the [Microsoft website](https://support.microsoft.com/en-us/office/excel-functions-alphabetical-b3944572-255d-4efb-bb96-c6d90033e188){target="_blank"}.  Not all functions are available.

  If the value of the field is 600.5655464: 
```
  formula('if({{ this }}>500,"profit","loss")') => "profit"
  formula('round({{ this }}, 2)') => 600.57
```