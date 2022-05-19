---
description: This service will allow a path to be filtered in the workflow based on a condition.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
This service will allow a path to be filtered in the workflow based on a condition.
___
### Filtering the path

If the condtion in the configuration evalutes to "true" the path will continue as normal.  If the condition evaluates to "false" the path will be skipped from that point forward.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Condition | The conditions being evaluated. | - | TRUE |

!!! warning "Important"

    Strings need to surrounded by double quotes in order to evaluate correctly.  You can also use brackets to enforce order of operations.
___
### Conditions

| Condition | Description | Example | Result |
| ----------- | ----------- | ----------- | ----------- |
| == | Equals | 1 == 1 | TRUE |
| != | Not equals | 1 != 1 | FALSE |
| >= | Greater than or equals to | 3 >= 1 | TRUE |
| <= | Less than or equals to | 5 <= 1 | FALSE |
| > | Greater than | 3 > 1 | TRUE |
| < | Less than | 5 < 10 | TRUE |
| in | Is a value in array | 3 in [4, 3] | TRUE |
| and | AND operator | (("status" == "status") and ("order" == "order")) | TRUE |
| or | OR operator | ((1 == 1) or (5 > 5)) | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the filter to add a condition.  

        ![Filter Configuration](/assets/images/services/filter/filter-configuration.png "Filter Configuration")

    === "2. Service data setup"

        The filter doesn't require any service data setup.
    
    === "3. Output Data"

        The filter doesn't output any data.

