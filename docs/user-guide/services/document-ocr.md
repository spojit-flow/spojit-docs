---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account with an Enterprise plan. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
 
The Document OCR (Optical Character Recognition) service allows you to read text and tables in PDF documents which could be used to make an API request or create an Excel or CSV file.

!!! warning "Important"

    The Document OCR service will sometimes pick up outliers and other noise/graphics as text or have difficulty reading some text depending on the font. Changing the sections and implementing functions can help to eliminate this issue. Always test with multiple documents prior to implementing in a production environment to ensure that the proper functions have been used to get the required result.

The following example configuration shows you how to configure the Document OCR service to read a field and a table in a PDF and create an output that could be used for other services.
___
### Input Data Configuration

The input data configuration used to select the source of the document to read and the file type.  Currently only PDF is supported but more options will be available soon.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| File type | Select "PDF" to read a PDF file. | `pdf` | TRUE |
| Raw Data | The raw data of the PDF file that will be read in the service. | - | TRUE |

### OCR Configuration

The OCR configuration is used to upload a test document file and create selections to be read into an output.

#### Upload Document

Select your document file and upload it:

![Document OCR Upload Document](/assets/images/services/document-ocr/document-ocr-upload-document.png "Document OCR Upload Document")

#### Define Tables

If your document contains tables, define them and the column names that are associated with them in this step. 

![Document OCR Define Tables](/assets/images/services/document-ocr/document-ocr-define-tables.png "Document OCR Define Tables")

Start by adding a table:

![Document OCR Add Table](/assets/images/services/document-ocr/document-ocr-add-table.png "Document OCR Add Table")

And then any columns that you wish to be in that table:

![Document OCR Add Column](/assets/images/services/document-ocr/document-ocr-add-column.png "Document OCR Add Column")

This step should look like the following after the table is added:

![Document OCR Define Tables Complete](/assets/images/services/document-ocr/document-ocr-define-tables-complete.png "Document OCR Define Tables Complete")


#### Configure OCR

Finally we are going to configure tables and fields on the OCR document itself.  Select "Configure OCR" to get started:

![Document OCR Configure OCR](/assets/images/services/document-ocr/document-ocr-configure-ocr.png "Document OCR Configure OCR")

First you will see the preview of the uploaded document:

![Document OCR Section Configuration](/assets/images/services/document-ocr/document-ocr-section-configuration.png "Document OCR Section Configuration")

#### Adding a simple section

Hold the ALT key and select a section:

![Document OCR Simple Section Highlight](/assets/images/services/document-ocr/document-ocr-simple-section-highlight.png "Document OCR Simple Section Highlight")

Select "Simple Section" as the type, add a name for it, and then click create:

![Document OCR Simple Section](/assets/images/services/document-ocr/document-ocr-simple-section.png "Document OCR Simple Section")

#### Adding a tabular section

Hold the ALT key and select a section for a column (like in the Simple section). Select "Tabular data" as the type, choose the corresponding column, add a name for it and finally click on "create":

![Document OCR Tabular Section](/assets/images/services/document-ocr/document-ocr-tabular-section.png "Document OCR Tabular Section")


Finally click "Done" to finish configuring the OCR

___
### Output Data

The following data will be output from the OCR from the above example. Please note that the empty lines within the table are in the output. Use available functions to remove empty lines or pick specific fields.

```json
{
      "Table 1": [
        {
          "Column 1": "1"
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": "2"
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": "3"
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": "4"
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": "5"
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": ""
        },
        {
          "Column 1": "6"
        },
        {
          "Column 1": ""
        }
      ],
      "My test section": [
        "QualityHosting AG - Uferweg 40-42 - D-63571 Gelnhausen",
        ""
      ]
    }
```
