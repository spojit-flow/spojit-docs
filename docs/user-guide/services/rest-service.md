---
template: overrides/main.html
---
This is a simple RESTful service that sends HTTP requests using GET, POST, PUT and DELETE methods in JSON format.

!!! warning "Important"

    This service has a built in JSON parser and will not work with other formats. Requests will automatically contain `Content-Type: application/json` and `Accept: application/json` headers.

___
### GET

When the GET configuration is selected the service will retrieve a resource from a given URL.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "get" to retrieve a resource. | - | TRUE |
| API Url | The full URL of the resource . | - | TRUE |
| Headers | The request headers are not required as a request can be made without them. If added the Header Key and Header Value is required for each. | - | FALSE |
| Header Key | The name of the header key. | - | TRUE |
| Header Value | The value of the header. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the Rest Service to get data from a resource.  It also contains an example header for an OAuth authorization bearer token.

        ![Rest Service GET Configuration](/assets/images/services/rest-service/get-configuration.png "Rest Service GET Configuration")

    === "2. Service data setup"

        The GET method doesn't require any service data setup.
    
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
            "metadata": {
                "statusCode": 200
            }
        }
        ```

___
### POST

When the POST configuration is selected the service will create a resource at a given location.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "post" to create a resource. | - | TRUE |
| API Url | The full URL of the resource . | - | TRUE |
| Headers | The request headers are not required as a request can be made without them. If added the Header Key and Header Value is required for each. | - | FALSE |
| Header Key | The name of the header key. | - | TRUE |
| Header Value | The value of the header. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the Rest Service to create a resource.

        ![Rest Service POST Configuration](/assets/images/services/rest-service/post-configuration.png "Rest Service POST Configuration")

    === "2. Service data setup"

        The schema can be whatever the resource excepts and for this example we are going to create an OBJECT schema with the specified fields:

        ![Rest Service POST Schema](/assets/images/services/rest-service/post-schema.png "Rest Service POST Schema")

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
     
        ![Rest Service POST Mapping](/assets/images/services/rest-service/post-mapping.png "Rest Service POST Mapping")
    
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
            "metadata": {
                "statusCode": 201
            }
        }
        ```

___
### PUT

When the PUT configuration is selected the service will update a resource at a given location.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "put" to update a resource. | - | TRUE |
| API Url | The full URL of the resource . | - | TRUE |
| Headers | The request headers are not required as a request can be made without them. If added the Header Key and Header Value is required for each. | - | FALSE |
| Header Key | The name of the header key. | - | TRUE |
| Header Value | The value of the header. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the Rest Service to update a resource.

        ![Rest Service PUT Configuration](/assets/images/services/rest-service/put-configuration.png "Rest Service PUT Configuration")

    === "2. Service data setup"

        The schema can be whatever the resource excepts and for this example we are going to create an OBJECT schema with the specified fields:

        ![Rest Service PUT Schema](/assets/images/services/rest-service/put-schema.png "Rest Service PUT Schema")

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
     
        ![Rest Service PUT Mapping](/assets/images/services/rest-service/put-mapping.png "Rest Service PUT Mapping")
    
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
            "metadata": {
                "statusCode": 200
            }
        }
        ```

___
### DELETE

When the DELETE configuration is selected the service will delete a resource from a given URL.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "delete" to delete a resource. | - | TRUE |
| API Url | The full URL of the resource . | - | TRUE |
| Headers | The request headers are not required as a request can be made without them. If added the Header Key and Header Value is required for each. | - | FALSE |
| Header Key | The name of the header key. | - | TRUE |
| Header Value | The value of the header. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the Rest Service to delete a resource:

        ![Rest Service DELETE Configuration](/assets/images/services/rest-service/delete-configuration.png "Rest Service DELETE Configuration")

    === "2. Service data setup"

        The DELETE method doesn't require any service data setup.
    
    === "3. Output Data"

        Many services will not return any data after a resource is deleted but if data is returned it could possiblly look like this:

        ```json
        {
            "data": {
                "userId": 1,
                "id": 1,
                "title": "delectus aut autem",
                "completed": false
            },
            "metadata": {
                "statusCode": 204
            }
        }
        ```