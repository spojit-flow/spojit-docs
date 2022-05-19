---
description: Integrate Netsuite.  Create and modify a Netsuite integration with the bilateral transfer of resources within the Netsuite RESTful web service. This Netsuite service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
NetSuite is the leading integrated cloud business software suite, including business accounting, ERP, CRM and ecommerce software.  This service can facilitate the bilateral transfer of resources within the Netsuite RESTful web service.

!!! tip "Tip" 

    Full documentation of Netsuite resources and configuration is available in the [Netsuite Help Center](https://system.na1.netsuite.com/app/help/helpcenter.nl?fid=book_1559132836.html "Netsuite API Documentation"){target="_blank"}.
___
### Netsuite Authorization

This service uses the Token Based Authentication (TBA) approach outlined in the [Netsuite Help Center](https://system.netsuite.com/app/help/helpcenter.nl?fid=section_4247337262.html "Netsuite API Token Based Authentication"){target="_blank"}.  The following authorization configuration needs to filled out in order to connect with Netsuite:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Company URL | The company endpoint for your Netsuite instance (i.e. https://****.suitetalk.api.netsuite.com). | - | TRUE |
| Account ID | Your account ID. | - | TRUE |
| Consumer Key | A consumer key for your Netsuite instance. | - | TRUE |
| Consumer Secret | A consumer secret for your Netsuite instance. | - | TRUE |
| Token ID | A token ID for your Netsuite instance. | - | TRUE |
| Token Secret | A token secret for your Netsuite instance. | - | TRUE |

The following example configuration shows you how to configure the authorziation for Netsuite:

![Netsuite Authorization Configuration](/assets/images/services/netsuite-rest-service/authorization-configuration.png "Netsuite Authorization Configuration")

!!! warning "Important"

    This service uses __Version 1 (v1)__ of the Netsuite REST API by default and will append this to the path automatically.  Please add the paths accordingly without the reference to `/services/rest/record/v1`:

    | Correct | Incorrect |
    | ----------- | ----------- |
    | `/salesOrder` | `/services/rest/record/v1/salesOrder` |

--8<-- "docs/reference/services/default-connector.md"