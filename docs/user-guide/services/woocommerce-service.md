---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
WooCommerce is a customizable, open-source eCommerce platform built on WordPress.  This service can facilitate the bilateral transfer of resources within the WooCommerce RESTful web service.

!!! tip "Tip" 

    Full documentation of WooCommerce resources and configuration is available at [WooCommerce API Documentation](https://woocommerce.github.io/woocommerce-rest-api-docs/ "WooCommerce API Documentation"){target="_blank"}.
___
### WooCommerce Authorization

The following authorization configuration needs to filled out in order to connect with WooCommerce:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| URL | The URL to your WooCommerce instance (i.e. https://www.yoursite.com). | - | TRUE |
| Consumer Key | A consumer key for your WooCommerce instance. | - | TRUE |
| Consumer Secret | A consumer secret for your WooCommerce instance. | - | TRUE |

To find where these values are please refer to our [WooCommerce authorization guide](/connectors/woocommerce/woocommerce-authorization/ "WooCommerce authorization guide"). 

The following example configuration shows you how to configure the authorziation for WooCommerce:

![WooCommerce Authorization Configuration](/assets/images/services/woocommerce-service/authorization-configuration.png "WooCommerce Authorization Configuration")

!!! warning "Important"

    This service uses __Version 3 (v3)__ of the WooCommerce API by default and will append this to the path automatically.  Please add the paths accordingly without the reference to `/wp-json/wc/v3/orders`:

    | Correct | Incorrect |
    | ----------- | ----------- |
    | `/orders` | `/wp-json/wc/v3/orders` |

--8<-- "docs/user-guide/services/default-connector.md"