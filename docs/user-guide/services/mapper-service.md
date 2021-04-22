---
description: The mapper service allows the mapping of data to create new objects or arrays.  The developed schema and associated mapping becomes the output of this service which could be used by other services. This mapper service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
The mapper service allows the mapping of data to create new objects or arrays.  The developed schema and associated mapping becomes the output of this service which could be used by other services.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to use the mapper service to create a new object.  There is no required configuration for this service.

    === "2. Service data setup"

        The schema can be whatever you want and for this example we are going to create an OBJECT schema with the specified fields:

        ![Mapper Service Schema](/assets/images/services/mapper-service/mapper-schema.png "Mapper Service Schema")

        Given the following source data from another service:

        ```json
        {
          "data": {
              "user_id": 1,
              "my_id": 1,
              "the_title": "delectus aut autem",
              "finished": false
          }
        }
        ```

        We can map the applicable fields with the schema object:
     
        ![Mapper Service Mapping](/assets/images/services/mapper-service/mapper-mapping.png "Mapper Service Mapping")
    
    === "3. Output Data"

        In this example the following output will be generated automatically by this service after it is run:

        ```json
        {
            "data": {
                "userId": 1,
                "id": 1,
                "title": "delectus aut autem",
                "completed": false
            },
            "metadata": []
        }
        ```