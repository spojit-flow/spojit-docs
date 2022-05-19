---
description: Integrate Magento 2.  Create and modify a Magento 2 integration with the bilateral transfer of resources within the Magento 2 RESTful web service. This Magento 2 service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
Magento 2 empowers thousands of retailers and brands with the best eCommerce platforms and flexible cloud solutions to rapidly innovate and grow.

!!! tip "Tip" 

    Full documentation of Magento 2 resources and configuration is available at [Magento 2 API Documentation](https://devdocs.magento.com/guides/v2.4/rest/bk-rest.html "Magento 2 API Documentation"){target="_blank"}.
___
### Magento 2 Authorization

The following authorization configuration needs to filled out in order to connect with Magento 2:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| URL | The main URL of your Magento 2 instance (i.e. https://www.mymagentostore.com). | - | TRUE |
| Store Code | The store code you wish to access.  Default refers to your default store. | default | TRUE |
| Access Token | The permanent Access Token. | - | TRUE |

The following example configuration shows you how to configure the authorziation for Magento 2:

![Magento 2 Authorization Configuration](/assets/images/services/magento2-service/authorization-configuration.png "Magento 2 Authorization Configuration")

!!! tip "Tip" 

    Create an integration in Magento 2 admin to get your access token: [Magento 2 Create Integration in admin](https://docs.magento.com/user-guide/system/integrations.html "Magento 2 Create Integration in admin"){target="_blank"}. Please note: no Callback URL or Identity Link URL is required when addin a new integration.

!!! warning "Important"

    This service uses __Version 1 (V1)__ of the Magento 2 Rest API by default and will append this and the store code to the URL automatically.  Please add the paths accordingly without the reference to `/rest/{{ store_code }}/V1/`:

    | Correct | Incorrect |
    | ----------- | ----------- |
    | `/bundle-products/options/types` | `/rest/default/V1/bundle-products/options/types` |

--8<-- "docs/reference/services/default-connector.md"