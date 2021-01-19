---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
Revel’s all-in-one cloud based POS is specifically designed for the unique demands of restaurants and bars.  This service can facilitate the bilateral transfer of resources within the Revel Systems RESTful web service.

!!! tip "Tip" 

    Full documentation of Revel Systems resources and configuration is available at [Revel Systems API Documentation](https://developer.revelsystems.com/ "Revel Systems API Documentation"){target="_blank"}.
___
### Revel Systems Authorization

The following authorization configuration needs to filled out in order to connect with Revel Systems:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Subdomain | The subdomain of your Revel instance (i.e. https://****.revelup.com). | - | TRUE |
| API Key | A api key for your Revel instance. | - | TRUE |
| API Secret | A api secret for your Revel instance. | - | TRUE |

The following example configuration shows you how to configure the authorziation for Revel:

![Revel Systems Authorization Configuration](/assets/images/services/revel-service/authorization-configuration.png "Revel Systems Authorization Configuration")

!!! warning "Important"

    This service uses the current version of the Revel Systems API and can either use the `resources` or `enterprise` route.  Please add the paths accordingly:

    | Correct | Incorrect |
    | ----------- | ----------- |
    | `/resources/Customer/` | `/Customer/` |
    | `/enterprise/User/` | `/User/` |

--8<-- "docs/user-guide/services/default-connector.md"