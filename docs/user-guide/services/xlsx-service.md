---
description: This service can write or read a XLSX (Microsoft Excel Open XML Spreadsheet) file from source data (API/Webhook etc) which could be used that to create a file on a FTP or send the file as an email attachment. This XLSX (Microsoft Excel Open XML Spreadsheet) service can be added to your workflow and connect and share data with other services. 
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___

This service can write or read a XLSX (Microsoft Excel Open XML Spreadsheet) file from source data (API/Webhook etc) which could be used that to create a file on a FTP or send the file as an email attachment. 
___
### Creating a Microsoft Excel file

The following configuration options can be used to create the raw data for a XLSX file from mapped data.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "write" to create a XLSX file | - | TRUE |
| Headers | The XLSX headers are not required as a file will generate without them with all the data; however, if they are specified only matching columns will be generated.  If added the Header Key and Header Value is required for each. | - | FALSE |
| Header Key | The field in the data that the column corresponds to. | - | TRUE |
| Header Value | The name of the column header in the XLSX file. | - | TRUE |

!!! warning "Important"

    Mapped service data must be contained with an ARRAY where the fields match the desired header columns.  The parser does not generate the file itself rather the raw data that can be used by other services to generate a file (i.e SFTP/Email).

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the XLSX service to create a two column XLSX file from an array of data.  The configuration is set up to create two headers for the columns.

        ![XLSX Service Writer Configuration](/assets/images/services/xlsx-service/configuration.png "XLSX Service Writer Configuration")

    === "2. Service data setup"

        After the configuration is setup we can then create a schema for the output XLSX. Each field within the array can be a column (depending on how headers are setup) and each index of the array consists of a row in the XLSX.  For this example we are going to switch to the ARRAY schema and add __id__ and __job__ as fields to that ARRAY:

        ![XLSX Service Writer Schema](/assets/images/services/xlsx-service/schema.png "XLSX Service Writer Schema")

        Given the following source data from another service:

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
          ]
        }
        ```
        
        Next we can map the __data__ array on the array in the field mapping with the __id_number__ and __job_name__ on __id__ and __job__ respectively as fields within the array:
     
        ![XLSX Service Writer Mapping](/assets/images/services/xlsx-service/mapping.png "XLSX Service Writer Mapping")
    
    === "3. Output Data"

        In this example the following output will be generated automatically by this service after it is run.  The data will be pretty unreadable but contained within the `data` node:

        ```json
        {
          "data": "XLSX raw data will be here",
          "metadata": {}
        }
        ```

        This output data can be used to create a XLSX file like this:

        ![XLSX Writer Output File](/assets/images/services/xlsx-service/xlsx-output.png "XLSX Writer Output File")

___
### Reading a Microsoft Excel file

  When the read configuration is selected the service will read the raw data from a XLSX file to create output data.  The output data can then be used by other services.

  | Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "read" to read a XLSX file | - | TRUE |
| Raw Data | The raw data of the XLSX file that will be parsed | - | TRUE |
| File Type | The type of file to be read - a newer "XLSX" file or the older "XLS" file | XLSX | TRUE |

!!! info "Info"

    There is no need to configure the service data that is read. The XLSX data will automatically create the data object.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the XLSX Service to create a data object. 
        
        Given the following source data from another service:

        ```json
        {
          "data": "XLSX raw data will be here",
          "metadata": {}
        }
        ```
        
        The location of the raw XLSX data needs to be specified in the configuration:

        ![XLSX Service Read Configuration](/assets/images/services/xlsx-service/read-configuration.png "XLSX Service Read Configuration")

    === "2. Service data setup"

        The [XLSX Service reader doesn't require any service data setup.
    
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