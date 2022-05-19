---
description: This service encompases a variety of tools used with shipping services including packaging logic and address validation. This shipping tools service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
 
This service encompases a variety of tools that can be used with shipping services.
___
### Packaging Logic

Packaging logic will automatically pack items into defined boxes to be used when creating shipments in various platforms.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "packagingLogic". | - | TRUE |
| Items | The array of items. | - | TRUE |
| Packages | The array of packages. | - | TRUE |
| Large Item Handler | What to do if an item won't fit in a package? Either throw an "error" or package the item separately. | packageSeparately | FALSE |

!!! danger "Important"

    This service requires the input arrays (items and packages) in a certain format. Please view the example for the structure of these objects in the __Output Data__ tab below.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the packaging logic.

        ![Packaging Logic Configuration](/assets/images/services/shipping-tools/packaging-logic-configuration.png "Packaging Logic Configuration")

    === "2. Service data setup"

        The packaging logic service doesn't require any service data setup.
    
    === "3. Output Data"

        Given the following items and packages:
        
        ```json
        {
            "items": [
                {
                    "reference": "SKU-1",
                    "length": "250",
                    "height": "250",
                    "width": "250",
                    "weight": "3",
                    "qty": "5"
                },
                {
                    "reference": "SKU-2",
                    "length": "600",
                    "height": "600",
                    "width": "600",
                    "weight": "3",
                    "qty": "3"
                }
            ],
            "packages": [
                {
                    "reference": "package 1",
                    "innerLength": "545",
                    "innerWidth": "545",
                    "innerHeight": "545",
                    "outerLength": "550",
                    "outerWidth": "550",
                    "outerHeight": "550",
                    "emptyWeight": "10",
                    "maxWeight": "100"
                }
            ]
        }
        ```
        
        In this example the following output will be generated automatically by this service after it is run:

        ```json
        {
            "data": [
                {
                "reference": "package 1",
                "length": 550,
                "width": 550,
                "height": 550,
                "weight": 25,
                "itemReferences": "SKU-1,SKU-1,SKU-1,SKU-1,SKU-1",
                "volumeUtilization": 48.3,
                "items": [
                    {
                    "reference": "SKU-1",
                    "length": 250,
                    "width": 250,
                    "height": 250,
                    "weight": 3
                    },
                    {
                    "reference": "SKU-1",
                    "length": 250,
                    "width": 250,
                    "height": 250,
                    "weight": 3
                    },
                    {
                    "reference": "SKU-1",
                    "length": 250,
                    "width": 250,
                    "height": 250,
                    "weight": 3
                    },
                    {
                    "reference": "SKU-1",
                    "length": 250,
                    "width": 250,
                    "height": 250,
                    "weight": 3
                    },
                    {
                    "reference": "SKU-1",
                    "length": 250,
                    "width": 250,
                    "height": 250,
                    "weight": 3
                    }
                ]
                },
                {
                "reference": "SKU-2",
                "length": 600,
                "width": 600,
                "height": 600,
                "weight": 3,
                "itemReferences": "SKU-2",
                "volumeUtilization": 100,
                "items": [
                    {
                    "reference": "SKU-2",
                    "length": 600,
                    "width": 600,
                    "height": 600,
                    "weight": 3
                    }
                ]
                },
                {
                "reference": "SKU-2",
                "length": 600,
                "width": 600,
                "height": 600,
                "weight": 3,
                "itemReferences": "SKU-2",
                "volumeUtilization": 100,
                "items": [
                    {
                    "reference": "SKU-2",
                    "length": 600,
                    "width": 600,
                    "height": 600,
                    "weight": 3
                    }
                ]
                },
                {
                "reference": "SKU-2",
                "length": 600,
                "width": 600,
                "height": 600,
                "weight": 3,
                "itemReferences": "SKU-2",
                "volumeUtilization": 100,
                "items": [
                    {
                    "reference": "SKU-2",
                    "length": 600,
                    "width": 600,
                    "height": 600,
                    "weight": 3
                    }
                ]
                }
            ],
            "metadata": []
            }
        ```
