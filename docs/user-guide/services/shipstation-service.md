---
description: Integrate ShipStation.  ShipStation is a web-based shipping solution that streamlines the shipping label printing and do-it-yourself shipping process for online retailers.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
ShipStation is a web-based shipping solution that streamlines the shipping label printing and do-it-yourself shipping process for online retailers.

!!! tip "Tip" 

    Full documentation of ShipStation resources and configuration is available at [ShipStation API Documentation](https://www.shipstation.com/docs/api/ "ShipStation API Documentation"){target="_blank"}.
___
### ShipStation Authorization

The following authorization configuration needs to filled out in order to connect with ShipStation:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| API Key | A api key for your ShipStation instance. | - | TRUE |
| API Secret | A api secret for your ShipStation instance. | - | TRUE |

The following example configuration shows you how to configure the authorziation for ShipStation:

![ShipStation Authorization Configuration](/assets/images/services/shipstation-service/authorization-configuration.png "ShipStation Authorization Configuration")

The details will be in your ShipStation account under Settings / Account / API Settings / API Keys:

![ShipStation Authorization Details](/assets/images/services/shipstation-service/authorization-details.png "ShipStation Authorization Details")


!!! warning "Important"

    To keep in line with other services, this service requires a path with the forward slash appended (different from the ShipStation API documentation).  Please add the paths accordingly in the service:

    | Correct | Incorrect |
    | ----------- | ----------- |
    | `/shipments` | `shipments` |
    | `/orders` | `orders` |

--8<-- "docs/user-guide/services/default-connector.md"