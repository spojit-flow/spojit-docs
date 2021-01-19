---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___

This service can send a simple email from the Spojit System email address.  It includes the ability to configure recipients, a subject line, text body, and add attachments.
___
### Configuration

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| To | The recipient(s) of the email message.  Each receipient requires a name and email address | - | TRUE |
| Name | The name of the recipient of the email message. | - | TRUE |
| Email | The email address of the recipient. | - | TRUE |
| Subject | The subject line of the email that is going to be sent. | - | TRUE |
| Body | The body of the email that is going to be sent. | - | TRUE |
| Attachments | File(s) that are attached to the email.  This requires attachment type, name and the raw data for the file. | - | FALSE |
| Attachment Type | The type of file that is being attached (i.e application/csv). | - | TRUE |
| Attachment Filename | The name of file that is being attached (i.e somedata.csv). | - | TRUE |
| Raw data | The raw data of the file that will be attached. | - | TRUE |

!!! warning "Important"

    The attachments need to be provided to this service in raw data with the correct data type and file name selected in order for the file to be read properly with some email clients.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the mailer to send an email with an attachment.  The `To`, `Subject` and `Body` are essential and attachments must be raw data with the applicable data type and name provided.

        ![Mailer Configuration](/assets/images/services/mailer/configuration.png "Mailer Configuration")

    === "2. Service data setup"

        The mailer doesn't require any service data setup.
    
    === "3. Output Data"

        The mailer will not provide much output data besides if the email was sent or not.  The following is what this configured email might look like when received:

        ![Mailer Output Email](/assets/images/services/mailer/output-email.png "Mailer Output Email")

