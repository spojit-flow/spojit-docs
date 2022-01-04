---
description: Integrate DEAR Systems. Create and modify an DEAR Systems integration with the bilateral transfer of resources within the DEAR Systems RESTful web service. This DEAR Systems service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
DEAR Systems is a cloud-based ERP solution for small to midsized retailers, wholesalers, manufacturers, and e-commerce operators.

!!! tip "Tip" 

    Full documentation of DEAR Systems resources and configuration is available at [DEAR Systems API Documentation](https://dearinventory.docs.apiary.io/ "DEAR Systems API Documentation"){target="_blank"}.
___
### DEAR Systems Authorization

The following authorization configuration needs to filled out in order to connect with DEAR Systems:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Account ID | Your DEAR Systems account ID. | - | TRUE |
| Application Key | An application key for your DEAR Systems account. | - | TRUE |

The following example configuration shows you how to configure the authorziation for DEAR Systems:

![DEAR Systems Authorization Configuration](/assets/images/services/dear-systems-service/authorization-configuration.png "DEAR Systems Authorization Configuration")

The details can be created & viewed in your DEAR Systems account under Integrations / API:

![DEAR Systems Authorization Details](/assets/images/services/dear-systems-service/authorization-details.png "DEAR Systems Authorization Details")


!!! warning "Important"

    This service uses __Version 2 (v2)__ of the DEAR Systems API by default and will append this to the path automatically.  Please add the paths accordingly without the reference to `/externalapi/v2/`:

    | Correct | Incorrect |
    | ----------- | ----------- |
    | `/saleList` | `/externalapi/v2/saleList` |

--8<-- "docs/user-guide/services/default-connector.md"