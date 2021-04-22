---
description: This service can facilitate the parallel processing of multiple routes. This parallel gateway service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
 
This service can facilitate the parallel processing of multiple routes.  The service itself can consist of two separate services within the application: `fork` and `join`.

A scenario where this could be useful is if you receive an online order from a webhook and you need to send the order and tracking information to a dropshipper.  In the webhook itself there is no customer or product information which is needed and a tracking number has not been generated.  We could use the parallel gateway to retreive the product and customer information and send the request to get a new tracking number at the same time before sending the information to the dropshipper. 

In order to get this scenario to work you would add a parallel gateway `fork` and three HTTP request services on to the canvas.  The `fork` would be joined to prior services and would have three routes (one to each HTTP service). The services would be set up for the relevant task (getting product information, getting customer information, creating a tracking number).  We would then add a parallel gateway `join` and add a route from each service to it before continuing with the workflow.

The scenario could look like this on the canvas (where Start is the incoming webhook and End is the sending of the data to the dropshipper):

``` mermaid
graph LR
  A[Start] --> B{FORK}
  B -->|Get product info| C[HTTP GET Request]
  B -->|Get customer info| D[HTTP GET Request]
  B -->|Create tracking number| E[HTTP POST Request]
  C --> F
  D --> F
  E --> F
  F{JOIN} --> G[End]
```
___
### Configuration

When added to the canvas the `fork` parallel gateway service will be automatic and not require any further configuration.

!!! tip "Tip"

    The parallel gateway does not specifically need a `join` in order to work and will finish without any issues.  The `join` makes a synchronous workflow outside of parallel processing by waiting until all parallel routes are complete before continuing (similar to async/await in JS). Omitting the `join` will lead to an asynchronous workflow where routes could continue in any order.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        There is no required configuration for this service.

    === "2. Service data setup"
        
        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will not provide any output data.