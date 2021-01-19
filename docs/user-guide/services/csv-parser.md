---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
 
This service can write a CSV file from source data (API/Webhook etc) which could be used that to create a file on a FTP or send the file as an email attachment. It can also read the data from a CSV file which would create data output which could be used to send API requests.
___
### Creating a CSV

When the write configuration is selected the service will write a CSV file from mapped data and configuration options.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "write" to write a CSV file. | - | TRUE |
| Headers | The CSV headers are not required as a file will generate without them with all the data; however, if they are specified only matching columns will be generated.  If added the Header Key and Header Value is required for each. | - | FALSE |
| Header Key | The field in the data that the column corresponds to. | - | TRUE |
| Header Value | The name of the column header in the CSV file. | - | TRUE |
| Always Quote | Always encapsulate column data in quotes in the CSV file? Either TRUE or FALSE. | `FALSE` | FALSE |
| Field Delimiter | String value of delimiter between column values. | `,` | TRUE |
| Record Delimiter | String value of delimiter between rows. Either LF (Linux) or CRLF (Windows). | `LF` | TRUE |

!!! warning "Important"

    Mapped service data must be contained with an ARRAY where the fields match the desired header columns.  The parser does not generate the file itself rather the raw data that can be used by other services to generate a file (i.e SFTP/Email).

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the CSV Parser to create a two column CSV file from an array of data.  The configuration is set up to create two headers for the columns with a comma as a field delimiter and using the LF record delimiter.

        ![CSV Parser Write Configuration](/assets/images/services/csv-parser/write-configuration.png "CSV Parser Write Configuration")

    === "2. Service data setup"

        After the configuration is setup we can then create a schema for the output CSV. Each field within the array can be a column (depending on how headers are setup) and each index of the array consists of a row in the CSV.  For this example we are going to switch to the ARRAY schema and add __id__ and __job__ as fields to that ARRAY:

        ![CSV Parser Write Schema](/assets/images/services/csv-parser/write-schema.png "CSV Parser Write Schema")

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
     
        ![CSV Parser Write Mapping](/assets/images/services/csv-parser/write-mapping.png "CSV Parser Write Mapping")
    
    === "3. Output Data"

        In this example the following output will be generated automatically by this service after it is run:

        ```json
        {
          "data": "ID,Job\n1,Scuba Diver\n2,Plumber\n",
          "metadata": {}
        }
        ```

        This output data can be used to create a CSV file like this:

        ![CSV Parser Write Output CSV](/assets/images/services/csv-parser/write-output-csv.png "CSV Parser Write Output CSV")

___
### Reading a CSV

  When the read configuration is selected the service will read the raw data from a CSV file to create an array of output data.  The array can then be used by other services.

  | Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "read" to read a CSV file. | - | TRUE |
| Raw Data | The raw data of the CSV file that will be parsed. | - | TRUE |

!!! info "Info"

    There is no need to configure the service data that is read. The CSV data will be read with output fields and headers automatically created.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the CSV Parser to read a two column CSV file and create an array of data from that. 
        
        Given the following source data from another service:

        ```json
        {
          "data": "ID,Job\n1,Scuba Diver\n2,Plumber\n",
          "metadata": {}
        }
        ```
        
        The location of the raw CSV data needs to be specified in the configuration:

        ![CSV Parser Read Configuration](/assets/images/services/csv-parser/read-configuration.png "CSV Parser Read Configuration")

    === "2. Service data setup"

        The CSV reader doesn't require any service data setup.
    
    === "3. Output Data"

        In this example the following output will be generated automatically by this service after it is run:

        ```json
        {
          "data": [
            {
              "ID": "1",
              "Job": "Scuba Diver"
            },
            {
              "ID": "2",
              "Job": "Plumber"
            }
          ],
          "metadata": {
            
          }
        }
        ```