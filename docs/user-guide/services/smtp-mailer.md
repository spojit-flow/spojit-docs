---
description: This service can send a simple email from an email account.  It includes the ability to configure recipients, a subject line, text body, html body and add attachments. This SMTP mailer service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___

This service can send a simple email from an email address.  It includes the ability to configure recipients, a subject line, text body, html body and add attachments.

___
### Login Authorization

The following authorization configuration needs to filled out in order to send mail via SMTP:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Host | The host of the mail server (i.e. smtp.gmail.com). | - | TRUE |
| Port | The port of the mail server. | - | TRUE |
| Username | The username to login. | - | TRUE |
| Password | The password to login. | - | TRUE |

The following example configuration shows you how to configure the login authorziation SMTP:

![SMTP Login Authorization Configuration](/assets/images/services/smtp-mailer/login-authorization-configuration.png "SMTP Login Authorization Configuration")

!!! warning "Using GMAIL" 

    To use login authorization for SMTP with GMAIL you need to allow [Less secure app access](https://support.google.com/accounts/answer/6010255 "Less secure app access"){target="_blank"} in your Google account.
___
### Configuration

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| From Name | The name of the sender of the email message. | - | TRUE |
| From Email | The email address of the sender. | - | TRUE |
| To | The recipient(s) of the email message.  Each receipient requires a name and email address | - | TRUE |
| Cc | The Cc recipient(s) of the email message.  Each receipient requires a name and email address | - | FALSE |
| Bcc | The Bcc recipient(s) of the email message.  Each receipient requires a name and email address | - | FALSE |
| Name | The name of the recipient of the email message. | - | TRUE |
| Email | The email address of the recipient. | - | TRUE |
| Subject | The subject line of the email that is going to be sent. | - | TRUE |
| Body | The body of the email that is going to be sent. | - | TRUE |
| HTML | The HTML body of the email that is going to be sent. | - | FALSE |
| Attachments | File(s) that are attached to the email.  This requires attachment type, name and the raw data for the file. | - | FALSE |
| Attachment Type | The type of file that is being attached (i.e application/csv). | - | TRUE |
| Attachment Filename | The name of file that is being attached (i.e somedata.csv). | - | TRUE |
| Raw data | The raw data of the file that will be attached. | - | TRUE |

!!! warning "Important"

    The attachments need to be provided to this service in raw data with the correct data type and file name selected in order for the file to be read properly with some email clients.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the mailer to send an email with an attachment.  The `To`, `Subject` and `Body` are essential and attachments must be raw data with the applicable data type and name provided.

        ![SMTP Mailer Configuration](/assets/images/services/smtp-mailer/configuration.png "SMTP Mailer Configuration")

    === "2. Service data setup"

        The mailer doesn't require any service data setup.
    
    === "3. Output Data"

        The mailer will not provide much output data besides if the email was sent or not.  The following is what this configured email might look like when received:

        ![Mailer Output Email](/assets/images/services/smtp-mailer/output-email.png "Mailer Output Email")

