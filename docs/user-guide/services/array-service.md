---
description: This service can be used to merge arrays, join object values and filter objects in an array. This array service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
 
This service can be used to merge arrays, join object values and filter objects in an array.
___
### Array Merge

Array merge will merge two arrays into one array.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "arrayMerge". | - | TRUE |
| Array 1 | The first array. | - | TRUE |
| Array 2 | The second array. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the array service to merge two arrays.

        ![Array Merge Configuration](/assets/images/services/array-service/array-merge-configuration.png "Array Merge Configuration")

    === "2. Service data setup"

        The array service doesn't require any service data setup.
    
    === "3. Output Data"

        Given the following 2 arrays:
        
        ```json
        [
            {
              "id_number": "1",
              "job_name": "Scuba Diver"
            }
        ]
        ```

        ```json
        [
            {
              "id_number": "2",
              "job_name": "Plumber"
            }
        ]
        ```
        
        In this example the following output will be generated automatically by this service after it is run:

        ```json
        {
          "data": [
            {
              "id_number": "1",
              "job_name": "Scuba Diver"
            },
            {
              "id_number": "2",
              "job_name": "Plumber"
            }
          ],
          "metadata": {}
        }
        ```

___
### Filter By

Filter By will remove items from an array if they don't match a given set of criteria.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "filterBy". | - | TRUE |
| Array | The array to filter. | - | TRUE |

The following operators can be used for the criteria:

| Operator | Description |
| ----------- | ----------- |
| eq | Equal to |
| neq | Not equal to |
| lt | Less than |
| lte | Less than equal to |
| gt | Greater than |
| gte | Greater than equal to |
| isTrue | Is it true |
| isFalse | Is it false |
| isNull | Is it NULL |
| isNotNull | Is it not NULL |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the array service to filter an array based on criteria.

        ![Array Filter Configuration](/assets/images/services/array-service/array-filter-configuration.png "Array Filter Configuration")

    === "2. Service data setup"

        The array service doesn't require any service data setup.
    
    === "3. Output Data"

        Given the following arrays:
        
        ```json
        [
            {
              "id_number": "1",
              "job_name": "Scuba Diver"
            },
            {
              "id_number": "2",
              "job_name": "Plumber"
            },
                        {
              "id_number": "3",
              "job_name": "Scuba Diver"
            }
          ]
        ```
        
        In this example the following output will be generated automatically by this service after it is run if the criteria is `job_name == "Scuba Diver"`:

        ```json
        {
          "data": [
            {
              "id_number": "1",
              "job_name": "Scuba Diver"
            },
            {
              "id_number": "3",
              "job_name": "Scuba Diver"
            }
          ],
          "metadata": {}
        }
        ```

___
### Join While

Join while will join the values into a string of subsequent objects by key while a given set of criteria is not met.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "joinWhile". | - | TRUE |
| Array | The array to filter. | - | TRUE |
| Separator | The value put between the joined values. | - | FALSE |

The following operators can be used for the criteria:

| Operator | Description |
| ----------- | ----------- |
| eq | Equal to |
| neq | Not equal to |
| lt | Less than |
| lte | Less than equal to |
| gt | Greater than |
| gte | Greater than equal to |
| isTrue | Is it true |
| isFalse | Is it false |
| isNull | Is it NULL |
| isNotNull | Is it not NULL |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the array service to join values of an array based on criteria.

        ![Array Join While Configuration](/assets/images/services/array-service/array-join-while-configuration.png "Array Join While Configuration")

    === "2. Service data setup"

        The array service doesn't require any service data setup.
    
    === "3. Output Data"

        Given the following arrays:
        
        ```json
        [
            {
              "id_number": "1",
              "job_name": "Scuba Diver"
            },
            {
              "id_number": "",
              "job_name": "Plumber"
            },
            {
              "id_number": "3",
              "job_name": "Bus Driver"
            },
            {
              "id_number": "",
              "job_name": "Cashier"
            },
            {
              "id_number": "",
              "job_name": "Zoo Keeper"
            }
          ]
        ```
        
        In this example the following output will be generated automatically by this service after it is run if the criteria is `id_number != ""` with a separator of ` - `:

        ```json
        {
          "data": [
            {
              "id_number": "1",
              "job_name": "Scuba Diver - Plumber"
            },
            {
              "id_number": "3",
              "job_name": "Bus Driver - Cashier - Zoo Keeper"
            }
          ],
          "metadata": {}
        }
        ```
___
### Multidimensional Array Combine Values

Multidimensional Array Combine Values will combine values in a multidimensional array based on keys.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "multidimensionalCombineValues". | - | TRUE |
| Array | The multidimensional array to process. | - | TRUE |
| Keys | A list of keys. | - | FALSE |

!!! tip "Tip" 

    Each key added is another level that will get you deeper in the array.  If the key does not exist the function won't go any deeper.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the array service to combine values in a multidimensional array.

        ![Multidimensional Array Combine Values Configuration](/assets/images/services/array-service/multidimensional-combine-values-configuration.png "Multidimensional Array Combine Values Configuration")

    === "2. Service data setup"

        The array service doesn't require any service data setup.
    
    === "3. Output Data"

        Given the following arrays:
        
        ```json
        [
          {
            "id": 1,
            "name": "Leanne Graham",
            "username": "Bret",
            "email": "Sincere@april.biz",
            "companies": [
              {
                "name": "Romaguera-Crona",
                "catchPhrase": "Multi-layered client-server neural-net",
                "bs": "harness real-time e-markets",
                
              },
              {
                "name": "Deckow-Crist",
                "catchPhrase": "Proactive didactic contingency",
                "bs": "synergize scalable supply-chains"
              }
            ]
          },
          {
            "id": 2,
            "name": "Ervin Howell",
            "username": "Antonette",
            "email": "Shanna@melissa.tv",
            "companies": [
              {
                "name": "Romaguera-Jacobson",
                "catchPhrase": "Face to face bifurcated interface",
                "bs": "e-enable strategic applications"
              },
              {
                "name": "Robel-Corkery",
                "catchPhrase": "Multi-tiered zero tolerance productivity",
                "bs": "transition cutting-edge web services"
              }
            ]
          }
        ]
        ```
        
        In this example the following output will be generated automatically by this service after it is run if the key is set to `companies`:

        ```json
        {
          "data": [
            {
              "name": "Romaguera-Crona",
              "catchPhrase": "Multi-layered client-server neural-net",
              "bs": "harness real-time e-markets",
              
            },
            {
              "name": "Deckow-Crist",
              "catchPhrase": "Proactive didactic contingency",
              "bs": "synergize scalable supply-chains"
            },
            {
              "name": "Romaguera-Jacobson",
              "catchPhrase": "Face to face bifurcated interface",
              "bs": "e-enable strategic applications"
            },
            {
              "name": "Robel-Corkery",
              "catchPhrase": "Multi-tiered zero tolerance productivity",
              "bs": "transition cutting-edge web services"
            }
          ],
          "metadata": {}
        }
        ```