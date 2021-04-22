---
description: This service can write a JSON file from source data which could be used that to create a file on a FTP or make a request in the JSON format. It can also read the data from a JSON file which would create data output. This JSON parser service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
This service can write a JSON file from source data which could be used that to create a file on a FTP or make a request in the JSON format. It can also read the data from a JSON file which would create data output.
___
### Writing a JSON file

When the write configuration is selected the service will write a JSON file from mapped data and configuration options.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "write" to write a JSON file. | - | TRUE |

!!! warning "Important"

    The parser does not generate the file itself rather the raw data that can be used by other services to generate or send a file (i.e SFTP/HTTP Request).

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the JSON Parser to create a JSON file from a data object.  

        ![JSON Parser Write Configuration](/assets/images/services/json-parser/write-configuration.png "JSON Parser Write Configuration")

    === "2. Service data setup"

        The schema can be whatever you want and for this example we are going to create an OBJECT schema with the specified fields:

        ![JSON Parser Write Schema](/assets/images/services/json-parser/write-schema.png "JSON Parser Write Schema")

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
     
        ![JSON Parser Write Mapping](/assets/images/services/json-parser/write-mapping.png "JSON Parser Write Mapping")
    
    === "3. Output Data"

        In this example the following output will be generated automatically by this service after it is run:

        ```json
        {
          "data": "{"userId":1,"id":1,"title":"delectus aut autem","completed":false}",
          "metadata": {}
        }
        ```

___
### Reading a JSON file

  When the read configuration is selected the service will read the raw data from a JSON file to create output data.  The output data can then be used by other services.

  | Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "read" to read a JSON file | - | TRUE |
| Raw Data | The raw data of the JSON file that will be parsed | - | TRUE |

!!! info "Info"

    There is no need to configure the service data that is read. The JSON data will automatically create the data object.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the JSON Parser to create a data object. 
        
        Given the following source data from another service:

        ```json
        {
          "data": "{"userId":1,"id":1,"title":"delectus aut autem","completed":false}",
          "metadata": {}
        }
        ```
        
        The location of the raw JSON data needs to be specified in the configuration:

        ![JSON Parser Read Configuration](/assets/images/services/json-parser/read-configuration.png "JSON Parser Read Configuration")

    === "2. Service data setup"

        The JSON reader doesn't require any service data setup.
    
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
            
          }
        }
        ```