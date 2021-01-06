---
template: overrides/main.html
---
Write a CSV file from source data or read the data from a CSV file to create output data.
___
#### Write Configuration
```
csv_parse(string $method, array $headers, boolean $alwaysQuote, string $fieldDelimiter, string $recordDelimiter):string
```
  Will write a CSV file from mapped data and configuration options.

  * __\$method__ set "write" to write a CSV file
  * __\$headers__ array of header objects to be written to the CSV file
    * __\$headerKey__ the key of the header in the mapped data
    * __\$headerValue__ the value of the column header in the output file
  * __\$alwaysQuote__ always encapsulate column data in quote. Either TRUE or FALSE. *Default: FALSE*
  * __\$fieldDelimiter__ value of delimiter between column values. *Default: ","*
  * __\$recordDelimiter__ value of delimiter between rows. Either LF (Linux) or CRLF (Windows). *Default: "LF"*

```
  mapped_data => [{ id: "1", job: "Scuba Diver" }, { id: "2", job: "Plumber" }]
  csv_parse("write", [{ headerKey: "id", headerValue: "ID" }, { headerKey: "job", headerValue: "Job" }], TRUE, ",", "CRLF") => '"ID","Job"\r\n"1","Scuba Diver"\r\n"2","Plumber"\r\n'
```

??? info "Mapped data"
    Mapped data must be contained within the ARRAY data type and with fields matching the desired header columns.
    ___
    ![CSV Parser Write Mapping](/assets/images/services/csv-parser-write-mapping.png "CSV Parser Write Mapping")

??? info "Output data"
    ```json
    {
      "data": ""ID","Job"\r\n"1","Scuba Diver"\r\n"2","Plumber"\r\n",
      "metadata": {}
    }
    ```
___
#### Read Configuration
```
csv_parse(string $method, string $rawData):array
```
  Will read the raw data from a CSV file to create an array of output data.

  * __\$method__ set "read" for reading a csv file
  * __\$rawData__ array of header objects to be written to the CSV file

```
  csv_parse("read", "ID,Job\n1,Scuba Diver\n2,Plumber\n") => [{ ID: "1", Job: "Scuba Diver" }, { ID: "2", Job: "Plumber" }]
```

??? info "Output data"
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