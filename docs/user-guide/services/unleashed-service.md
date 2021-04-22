---
description: Integrate Unleashed.  Create and modify an Unleashed integration with the bilateral transfer of resources within the Unleashed RESTful web service. This Unleashed Software service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___

Unleashed Software is a cloud-based inventory management platform that’s perfect for manufacturers, wholesalers and distributors.  This service can facilitate the bilateral transfer of resources within the Unleashed Software RESTful web service.

!!! tip "Tip" 

    Full documentation of Unleashed resources and configuration is available at [Unleashed API Documentation](https://apidocs.unleashedsoftware.com/ "Unleashed API Documentation"){target="_blank"}.
___
### Unleashed Authorization

The following authorization configuration needs to filled out in order to connect with Unleashed:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| API ID | The API ID in the UNLEASHED API ACCESS dashboard. | - | TRUE |
| API Key | The API Key in the UNLEASHED API ACCESS dashboard. | - | TRUE |

To find where these values are please refer to our [Unleashed authorization guide](/connectors/unleashed/unleashed-authorization/ "Unleashed authorization guide"). 

The following example configuration shows you how to configure the authorziation for Unleashed:

![Unleashed Authorization Configuration](/assets/images/services/unleashed-service/authorization-configuration.png "Unleashed Authorization Configuration")

--8<-- "docs/user-guide/services/default-connector.md"