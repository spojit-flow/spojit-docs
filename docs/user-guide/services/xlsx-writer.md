---
template: overrides/main.html
---
This service can write a XLSX (Microsoft Excel Open XML Spreadsheet) file from source data (API/Webhook etc) which could be used that to create a file on a FTP or send the file as an email attachment. 
___
### Creating a Microsoft Excel file

The following configuration options can be used to create the raw data for a XLSX file from mapped data.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Headers | The XLSX headers are not required as a file will generate without them with all the data; however, if they are specified only matching columns will be generated.  If added the Header Key and Header Value is required for each. | - | FALSE |
| Header Key | The field in the data that the column corresponds to. | - | TRUE |
| Header Value | The name of the column header in the XLSX file. | - | TRUE |

!!! warning "Important"

    Mapped service data must be contained with an ARRAY where the fields match the desired header columns.  The parser does not generate the file itself rather the raw data that can be used by other services to generate a file (i.e SFTP/Email).

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the XLSX writer to create a two column XLSX file from an array of data.  The configuration is set up to create two headers for the columns.

        ![XLSX Writer Configuration](/assets/images/services/xlsx-writer/configuration.png "XLSX Writer Configuration")

    === "2. Service data setup"

        After the configuration is setup we can then create a schema for the output XLSX. Each field within the array can be a column (depending on how headers are setup) and each index of the array consists of a row in the XLSX.  For this example we are going to switch to the ARRAY schema and add __id__ and __job__ as fields to that ARRAY:

        ![XLSX Writer Schema](/assets/images/services/xlsx-writer/schema.png "XLSX Writer Schema")

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
     
        ![XLSX Writer Mapping](/assets/images/services/xlsx-writer/mapping.png "XLSX Writer Mapping")
    
    === "3. Output Data"

        In this example the following output will be generated automatically by this service after it is run.  The data will be pretty unreadable but contained within the `data` node:

        ```json
        {
          "data": "XLSX raw data will be here",
          "metadata": {}
        }
        ```

        This output data can be used to create a XLSX file like this:

        ![XLSX Writer Output File](/assets/images/services/xlsx-writer/xlsx-output.png "XLSX Writer Output File")