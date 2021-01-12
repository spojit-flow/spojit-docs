---
template: overrides/main.html
---
This service can facilitate the transfer of computer files between a client and server via the Secure File Transfer Protocol (SFTP).
___
### Authorization

The following authorization configuration needs to filled out in order to connect to the SFTP server:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Host | The address of the FTP server (i.e. ftp.dlptest.com). | - | TRUE |
| Port | The port of the SFTP server. | 22 | TRUE |
| Username | The username to log in to the SFTP server. | - | TRUE |
| Password | The password to log in to the SFTP server. | - | TRUE |

The following example configuration shows you how to configure the test SFTP server at [Test.Rebex.Net](https://test.rebex.net/){target="_blank"} (this server only allows files to be downloaded).

![SFTP Authorization Configuration](/assets/images/services/sftp-service/authorization-configuration.png "SFTP Authorization Configuration")

!!! warning "Important"

    The host address does not require the protocol as it will default to SFTP.

--8<-- "docs/user-guide/services/file-system.md"