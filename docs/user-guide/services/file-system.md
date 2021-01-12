___
### Creating a file

Creating (or writing) a file will send the raw data output from another service(s) to a location.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "write" to transfer a file. | - | TRUE |
| Path | The location to write the file to (including the filename). | - | TRUE |
| Raw Data | The raw data of the file that will be sent. | - | TRUE |

!!! warning "Important"

    The path will always require the filename at the end of it (i.e '/path/to/file.txt').

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to transfer a file to a location.

        ![Write Configuration](/assets/images/services/file-system/write-configuration.png "Write Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will not provide any output data.
___
### Updating a file

Updating a file will send the raw data output from another service(s) to a location if it exists.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "update" to update a file. | - | TRUE |
| Path | The location to update the file to (including the filename). | - | TRUE |
| Raw Data | The raw data of the file that will be sent. | - | TRUE |

!!! tip "Tip"

    This option will only update the file it if already exists on the server.  If there is a possibility that the file will not exist use the Upsert (PUT) option instead.

!!! warning "Important"

    The path will always require the filename at the end of it (i.e '/path/to/file.txt').

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to update a file.

        ![Update Configuration](/assets/images/services/file-system/update-configuration.png "Update Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will not provide any output data.
___
### Upserting a file

Upserting (or putting) a file will send the raw data output from another service(s) to a location. If it exists it will be overwritten and if it does not exist it will be created.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "put" to upsert a file. | - | TRUE |
| Path | The location to upsert the file to (including the filename). | - | TRUE |
| Raw Data | The raw data of the file that will be sent. | - | TRUE |

!!! tip "Tip"

    This option will create a file if it does not exist and update it if it already exists.

!!! warning "Important"

    The path will always require the filename at the end of it (i.e '/path/to/file.txt').

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to upsert a file.

        ![PUT Configuration](/assets/images/services/file-system/put-configuration.png "PUT Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will not provide any output data.

___
### Downloading a file

Downloading (or reading) a file will transer the raw data from the location to be used as output for other service(s).

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "read" to download a file. | - | TRUE |
| Path | The location of the file to download (including the filename). | - | TRUE |

!!! warning "Important"

    The path will always require the filename at the end of it (i.e '/path/to/file.txt').

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to read a file.

        ![Read Configuration](/assets/images/services/file-system/read-configuration.png "Read Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will produce the following raw data if the file transfered successfully:

        ```json
        {
          "data": "ID,Job\n1,Scuba Diver\n2,Plumber\n",
          "metadata": {}
        }
        ```

___
### Deleting a file

Deleting a file will remove a file from a location if it exists.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "delete" to remove a file. | - | TRUE |
| Path | The location of the file to delete (including the filename). | - | TRUE |

!!! warning "Important"

    The path will always require the filename at the end of it (i.e '/path/to/file.txt').

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to delete a file.

        ![Delete Configuration](/assets/images/services/file-system/delete-configuration.png "Delete Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will not provide any output data.

___
### Check if a file or directory exists

This option will check to see if a file exists at a given location.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "has" to check if it exists. | - | TRUE |
| Path | The location to check if it exists. | - | TRUE |

!!! tip "Tip"

    This method can check if directories exist as well.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to delete a file.

        ![Has Configuration](/assets/images/services/file-system/has-configuration.png "Has Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will produce the following boolean data (`true` if it exists, `false` if it does not exist):

        ```json
        {
          "data": true,
          "metadata": {}
        }
        ```
___
### Get list of files and directories

This option will get a list of files and folders in a specified directory.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "list" to get a list of files. | - | TRUE |
| Path | The location to get the list from. | - | TRUE |
| Recursive | Whether is it recursive or not. | FALSE | FALSE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to retrieve a list of files and directories:

        ![List Configuration](/assets/images/services/file-system/list-configuration.png "List Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will produce the following array of files and directories:

        ```json
        {
            "data": [
            {
                "type": "file",
                "path": "357a3948-e3ad-4cb5-856b-1cde09c37b55.txt",
                "visibility": "public",
                "size": 16,
                "dirname": "",
                "basename": "357a3948-e3ad-4cb5-856b-1cde09c37b55.txt",
                "extension": "txt",
                "filename": "357a3948-e3ad-4cb5-856b-1cde09c37b55"
            },
            {
                "type": "file",
                "path": "59430d5e-ce73-4691-9fd7-705ab97cd792.txt",
                "visibility": "public",
                "size": 16,
                "dirname": "",
                "basename": "59430d5e-ce73-4691-9fd7-705ab97cd792.txt",
                "extension": "txt",
                "filename": "59430d5e-ce73-4691-9fd7-705ab97cd792"
            },
            {
                "type": "file",
                "path": "dea44f29-c9e3-441b-b02c-0d923112698d.txt",
                "visibility": "public",
                "size": 16,
                "dirname": "",
                "basename": "dea44f29-c9e3-441b-b02c-0d923112698d.txt",
                "extension": "txt",
                "filename": "dea44f29-c9e3-441b-b02c-0d923112698d"
            },
            {
                "type": "dir",
                "path": "Testing",
                "dirname": "",
                "basename": "Testing",
                "filename": "Testing"
            }
            ],
            "metadata": []
        }
        ```
   
___
### Creating a directory

Create a directory will create a directory in a location if it doesn't exist.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "createDir" to create a directory. | - | TRUE |
| Path | The location of the directory to create. | - | TRUE |


??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to create a directory.

        ![Create Directory Configuration](/assets/images/services/file-system/createdir-configuration.png "Create Directory Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will not provide any output data.

___
### Deleting a directory

Deleting a directory will remove a directory from a location if it exists.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Method | Select "deleteDir" to remove a directory. | - | TRUE |
| Path | The location of the directory to delete. | - | TRUE |


??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure a file system service to delete a directory.

        ![Delete Directory Configuration](/assets/images/services/file-system/deletedir-configuration.png "Delete Directory Configuration")

    === "2. Service data setup"

        This service doesn't require any service data setup.
    
    === "3. Output Data"

        This service will not provide any output data.