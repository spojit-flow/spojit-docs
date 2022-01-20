---
description: This service can be used to delay the execution of a workflow. This delay service can be added to your workflow and connect with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
 
This service can be used to delay the execution of a workflow.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Delay | The amount you want to delay in seconds (max 60). | 5 | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the delay service to delay the workflow by 5 seconds.

        ![Delay Configuration](/assets/images/services/delay-service/delay-configuration.png "Delay Configuration")

    === "2. Service data setup"

        The delay service doesn't require any service data setup.
    
    === "3. Output Data"

        The delay service doesn't have any output data.
