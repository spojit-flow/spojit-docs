---
description: Integrate Deputy.  Create and modify an Deputy integration with the bilateral transfer of resources within the Deputy RESTful web service. This Deputy service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
Deputy is a cloud-based workforce management and scheduling platform designed to help companies organize, track, and manage their teams.  This service can facilitate the bilateral transfer of resources within the Deputy RESTful web service.

!!! tip "Tip" 

    Full documentation of Deputy resources and configuration is available at [Deputy API Documentation](https://www.deputy.com/api-doc/API/Getting_Started "Deputy API Documentation"){target="_blank"}.
___
### Deputy Authorization

The following authorization configuration needs to filled out in order to connect with Deputy:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Subdomain and Region | The subdomain and server region of your Deputy instance (i.e. https://****.**.deputy.com). | - | TRUE |
| OAuth Token | The permanent OAuth Access Token. | - | TRUE |

The following example configuration shows you how to configure the authorziation for Deputy:

![Deputy Authorization Configuration](/assets/images/services/deputy-service/authorization-configuration.png "Deputy Authorization Configuration")

!!! warning "Important"

    This service uses __Version 1 (v1)__ of the Deputy API by default and will append this to the path automatically.  Please add the paths accordingly without the reference to `/api/v1`:

    | Correct | Incorrect |
    | ----------- | ----------- |
    | `/resource/Employee` | `/api/v1/resource/Employee` |

--8<-- "docs/reference/services/default-connector.md"