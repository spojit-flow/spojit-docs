---
description: This service can facilitate the transfer of computer files between a client and server via the File Transfer Protocol (FTP). This FTP service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
  
This service can facilitate the transfer of computer files between a client and server via the File Transfer Protocol (FTP).
___
### Authorization

The following authorization configuration needs to filled out in order to connect to the FTP server:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Host | The address of the FTP server (i.e. ftp.dlptest.com). | - | TRUE |
| Port | The port of the FTP server. | 21 | TRUE |
| Username | The username to log in to the FTP server. | - | TRUE |
| Password | The password to log in to the FTP server. | - | TRUE |
| Passive mode | Enable passive mode allowing the client to initiate the data connection with the server. | TRUE | FALSE |
| SSL | Enable the use of SSL (Secure Socket Layer). | TRUE | FALSE |
| Ignore Passive Address | Ignore the received passive address from the FTP server. | FALSE | FALSE |

The following example configuration shows you how to configure the test FTP server at [DLP Test](https://dlptest.com/ftp-test){target="_blank"} and ensuring that passive mode is turned on.

![FTP Authorization Configuration](/assets/images/services/ftp-service/authorization-configuration.png "FTP Authorization Configuration")

!!! warning "Important"

    The host address does not require the protocol as it will default to FTP (i.e ftp://).

--8<-- "docs/reference/services/file-system.md"