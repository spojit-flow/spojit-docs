---
description: Integrate Netsuite using RESTlets.  Create and modify a Netsuite integration with the bilateral transfer of resources within the Netsuite RESTlet web service. This Netsuite service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
NetSuite is the leading integrated cloud business software suite, including business accounting, ERP, CRM and ecommerce software.  This service can facilitate the bilateral transfer of resources within the Netsuite RESTlet service.

!!! tip "Tip" 

    Full documentation of creating RESTlets in Netsuite is available in the [Netsuite Help Center](https://docs.oracle.com/en/cloud/saas/netsuite/ns-online-help/section_N2979684.html "Netsuite Creating RESTlets"){target="_blank"}.
___
### Netsuite RESTlet Authorization

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

![Netsuite RESTlet Authorization Configuration](/assets/images/services/netsuite-restlet-service/authorization-configuration.png "Netsuite RESTlet Authorization Configuration")

___
### Making a request

Creating (or writing) a file will send the raw data output from another service(s) to a location.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | GET / POST / PUT / DELETE | GET | TRUE |
| URL | The full URL of your RESTlet. | - | TRUE |

!!! warning "Important"

    The response code will always be 200 if the RESTlet response is successful.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the Netsuite RESTlet service to get data from Netsuite.

        ![GET Configuration](/assets/images/services/netsuite-restlet-service/get-configuration.png "GET Configuration")

    === "2. Service data setup"

        This service's data setup is dependant on the RESTlet configuration.
    
    === "3. Output Data"

        This service's output data is dependant on the RESTlet configuration.