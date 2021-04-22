---
description: Integrate SmartFreight®.  Create and modify a SmartFreight® integration with the transfer of resources within SmartFreight® SOAP web service. This SmartFreight® service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
SmartFreight® puts you in front of hundreds of transport providers and routes at your fingertips, offering you effective freight solutions.

!!! tip "Tip" 

    Full documentation of SmartFreight resources and configuration is available at [SmartFreight API Documentation](http://balmoral.ifsconnect.net/smartfreight/ "SmartFreight API Documentation"){target="_blank"}.
___
### SmartFreight Authorization

The following authorization configuration needs to filled out in order to connect with WooCommerce:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| WSDL | The SmartFreight WSDL. | - | TRUE |
| ID | The ID for your SmartFreight instance. | - | TRUE |
| Passwd | The password for your SmartFreight instance. | - | TRUE |

The following example configuration shows you how to configure the authorziation for SmartFreight:

![SmartFreight Authorization Configuration](/assets/images/services/smartfreight-service/authorization-configuration.png "SmartFreight Authorization Configuration")

!!! danger "Important"

    * This service has a built in XML parser and will automatically convert to the proper format. SOAP requests will automatically contain required headers and authorization configuration so they do not need to be added.  
    * Where there is a reference mentioned, the service will inject a unique reference that can be viewed in our logs and in SmartFreight (i.e spojit_xdfdef4543). 
    * This documenation does not fully explain all the elements of the Consignment Message. Please refer to the [SmartFreight Consignment Message documentation](http://balmoral.ifsconnect.net/integration/smartfreight-consignment-message/ "SmartFreight Consignment Message documentation"){target="_blank"} for further information.

___
### CalculateRate

When the CalculateRate configuration is selected the service will call the CalculateRate resource.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        This method does not requrire configuartion.

    === "2. Service data setup"

        Here is an example consignment message mapping that could be used for the CalculateRate method. The connote root node can be ommited from the mapping:

        ```json
        {
            "recaccno": "TEST",
            "recname": "TEST RECEIVER",
            "recaddr": {
                "add1": "100 George Street",
                "add3": "SYDNEY",
                "add4": "NSW",
                "add5": "2000"
            },
            "carriername": "TEST CARRIER",
            "freightlinedetails": {
                "amt": "1",
                "desc": "CARTON",
                "wgt": "5"
            }
        }
        ```
    
    === "3. Output Data"

        The CalculateRate call will return a CalculateRateResult which will be in the form of a Consignment Message.  For more information please visit the [CalculateRate documentation](http://balmoral.ifsconnect.net/integration/web-service/calculaterate/ "CalculateRate documentation"){target="_blank"}.

___
### GetDeliveryOptions

When the GetDeliveryOptions configuration is selected the service will call the GetDeliveryOptions resource.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        This method does not requrire configuartion.

    === "2. Service data setup"

        Here is an example consignment message mapping that could be used for the GetDeliveryOptions method. The connote root node can be ommited from the mapping:

        ```json
        {
            "recaccno": "TEST",
            "recname": "TEST RECEIVER",
            "recaddr": {
                "add1": "100 George Street",
                "add3": "SYDNEY",
                "add4": "NSW",
                "add5": "2000"
            },
            "carriername": "TEST CARRIER",
            "freightlinedetails": {
                "amt": "1",
                "desc": "CARTON",
                "wgt": "5"
            }
        }
        ```
    
    === "3. Output Data"

        The GetDeliveryOptions call will return a GetDeliveryOptionsResult which will be in the form of a Consignment Message.  For more information please visit the [GetDeliveryOptions documentation](http://balmoral.ifsconnect.net/integration/web-service/getdeliveryoptions/ "GetDeliveryOptions documentation"){target="_blank"}.

___
### CostComparison

When the CostComparison configuration is selected the service will call the CostComparison resource.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        This method does not requrire configuartion.

    === "2. Service data setup"

        Here is an example consignment message mapping that could be used for the CostComparison method.  The connote root node can be ommited from the mapping:

        ```json
        {
            "recaccno": "TEST",
            "recname": "TEST RECEIVER",
            "recaddr": {
                "add1": "100 George Street",
                "add3": "SYDNEY",
                "add4": "NSW",
                "add5": "2000"
            },
            "carriername": "TEST CARRIER",
            "freightlinedetails": {
                "amt": "1",
                "desc": "CARTON",
                "wgt": "5"
            }
        }
        ```
    
    === "3. Output Data"

        The CostComparison call will return a CostComparisonResult.  For more information please visit the [CostComparison documentation](http://balmoral.ifsconnect.net/integration/web-service/costcomparison/ "CostComparison documentation"){target="_blank"}.

___
### Import

When the Import configuration is selected the service will call the Import resource.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        This method does not requrire configuartion.

    === "2. Service data setup"

        Here is an example consignment message mapping that could be used for the Import method. The connote root node can be ommited from the mapping:

        ```json
        {
            "recaccno": "TEST",
            "recname": "TEST RECEIVER",
            "recaddr": {
                "add1": "100 George Street",
                "add3": "SYDNEY",
                "add4": "NSW",
                "add5": "2000"
            },
            "carriername": "TEST CARRIER",
            "freightlinedetails": {
                "amt": "1",
                "desc": "CARTON",
                "wgt": "5"
            }
        }
        ```
    
    === "3. Output Data"

        The Import call will return a ImportResult which will be in the form of a Consignment Message.  For more information please visit the [Import documentation](http://balmoral.ifsconnect.net/integration/web-service/import/ "Import documentation"){target="_blank"}.

___
### FindCon

When the FindCon configuration is selected the service will call the FindCon resource.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Xmlfield | The Search Criteria expressed as the SmartFreight field name as provided in the SmartFreight Consignment XML format. | - | TRUE |
| Fieldvalue | The Search Value for the Search Criteria. Wildcards are not supported. | - | FALSE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the FindCon method to get data from the FindCon resource.

        ![FindCon Configuration](/assets/images/services/smartfreight-service/findcon-configuration.png "FindCon Configuration")

    === "2. Service data setup"

        This method doesn't require any service data setup.
    
    === "3. Output Data"

        The FindCon call will return a FindConResult like the following:
        
        ```json
        {
            "data": {
                "FindConResult": {
                    "string": [
                        "B617301D-82F0-4B5A-9E7B-67D1D3DEA37B",
                        "DCBE08E7-7FCD-493F-A0C7-1B871297FEDF"
                    ]
                }
            },
            "metadata": {
                "statusCode": "200",
                "headers": [
                    "HTTP/1.1 200 OK\r\nContent-Length: 589\r\nContent-Type: text/xml; charset=utf-8\r\nServer: Microsoft-HTTPAPI/2.0\r\nDate: Mon, 08 Mar 2021 11:55:00 GMT\r\n"
                ]
            }
        }
        ```
        For more information please visit the [FindCon documentation](http://balmoral.ifsconnect.net/integration/web-service/findcon/ "FindCon documentation"){target="_blank"}.

___
### Enquiry

When the Enquiry configuration is selected the service will call the Enquiry resource.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Conid | The SmartFreight internal consignment identifier. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the Enquiry method to get data from the Enquiry resource.

        ![Enquiry Configuration](/assets/images/services/smartfreight-service/enquiry-configuration.png "Enquiry Configuration")

    === "2. Service data setup"

        This method doesn't require any service data setup.
    
    === "3. Output Data"

        The Enquiry call will return a EnquiryResult like the following:
        
        ```json
        {
            "data": {
                "EnquiryResult": {
                    "@attributes": {
                        "Entity": "QPU"
                    },
                    "_currency": "$",
                    "accno": "654321",
                    "buttonsstate": "00001000000",
                    "carrierid": "360",
                    "carriername": "TEST CARRIER1",
                    "carrzone": "WW1",
                    "chargeto": "S",
                    "chgwgt": "3",
                    "condate": "8/03/2021",
                    "conno": "WLR10141",
                    "connotenumber": "WLR10141",
                    "conprfx": "WLR",
                    "consignmentdatenumber": "20210308",
                    "createdutcdatetime": "2010160404",
                    "creatorid": "IMPORTED",
                    "currency": "AUD",
                    "dailyid": "496",
                    "dailyid_wan": "QPU496",
                    "datelong": "20210308",
                    "deliverytimeraw": "[none]",
                    "entityid": "QPU",
                    "freightlinedetails": {
                        "amt": "1",
                        "cube": "0.00716",
                        "desc": "CARTON",
                        "hgt": "11",
                        "len": "31",
                        "maxdimension": "31",
                        "mindimension": "11",
                        "multiplylwh": "Y",
                        "ref": "ASD048198",
                        "wdt": "21",
                        "wgt": "3"
                    },
                    "fromzone": "VV1",
                    "grandtotmrkup": "22.946",
                    "grandtotrate": "22.946",
                    "gstamount": "2.086",
                    "gstamt": "2.086",
                    "gstonmrkup": "2.086",
                    "identification": {
                        "conid": "B617301D-82F0-4B5A-9E7B-67D1D3DEA37B"
                    },
                    "importfilename": "ASD048198",
                    "labels": {
                        "dailyid_foreign": "496",
                        "dailyid_wan": "QPU496",
                        "freightlineno": "1",
                        "itemno": "1",
                        "labelid": "407",
                        "labelno_tracking": "WLR10141001",
                        "nooflabelsdefault": "1"
                    },
                    "lastmodified": "20201016040432",
                    "manifestaccno": "654321",
                    "movementtype": "OUTBOUND",
                    "netcost": "20.86",
                    "nooffashionlabels": "1",
                    "notifyrecemail": "Y",
                    "notifyrecsms": "Y",
                    "originaldespatchdate": "20201016",
                    "rate": "20.86",
                    "recaccno": "AC05548",
                    "recaddr": {
                        "add1": "BUILDING 614, ROOM 115",
                        "add2": "5 DE LAETER WAY",
                        "add3": "BENTLEY",
                        "add4": "WA",
                        "add5": "6102",
                        "add6": "AUSTRALIA",
                        "type": "Business"
                    },
                    "reccontact": "0892667535",
                    "recemail": "H.Fairhurst@curtin.edu.au",
                    "recloc": "-32.0010000,115.9240000",
                    "recname": "CURTIN CORROSION CENTER",
                    "recph": "CHARLES LACOSTE",
                    "rtsaddr": {
                        "add6": "AUSTRALIA"
                    },
                    "rtzexpire": "999912312359",
                    "sendaccno": "M4",
                    "sendaddr": {
                        "add1": "C/O DSE ",
                        "add2": "336 SETTLEMENT ROAD",
                        "add3": "THOMASTOWN",
                        "add4": "VIC",
                        "add5": "3074",
                        "add6": "AUSTRALIA"
                    },
                    "sendloc": "-37.6820000,145.0140000",
                    "sendname": "Australian Window Furnishings",
                    "service": "OVERNIGHT",
                    "taxrate": "10",
                    "totalcost": "20.86",
                    "totcost": "20.86",
                    "totcostplusmrkup": "20.86",
                    "totcube": "0.00716",
                    "totdgcharge": "0",
                    "totitems": "1",
                    "totwgt": "3",
                    "tpyaddr": {
                        "add6": "AUSTRALIA"
                    },
                    "trackingid": "qPubia"
                }
            },
            "metadata": {
                "statusCode": "200",
                "headers": [
                    "HTTP/1.1 200 OK\r\nContent-Length: 4393\r\nContent-Type: text/xml; charset=utf-8\r\nServer: Microsoft-HTTPAPI/2.0\r\nDate: Mon, 08 Mar 2021 12:08:54 GMT\r\n"
                ]
            }
        }
        ```
        For more information please visit the [Enquiry documentation](http://balmoral.ifsconnect.net/integration/web-service/enquiry/ "Enquiry documentation"){target="_blank"}.

___
### DeleteCon

When the DeleteCon configuration is selected the service will call the DeleteCon resource.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Conid | The SmartFreight internal consignment identifier. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the DeleteCon method to use the DeleteCon resource.

        ![DeleteCon Configuration](/assets/images/services/smartfreight-service/deletecon-configuration.png "DeleteCon Configuration")

    === "2. Service data setup"

        This method doesn't require any service data setup.
    
    === "3. Output Data"

        The DeleteCon call will return a DeleteConResult like the following:
        
        ```json
        {
            "data": {
                "DeleteConResult": {
                    "string": [
                        "B617301D-82F0-4B5A-9E7B-67D1D3DEA37B"
                    ]
                }
            },
            "metadata": {
                "statusCode": "200",
                "headers": [
                    "HTTP/1.1 200 OK\r\nContent-Length: 589\r\nContent-Type: text/xml; charset=utf-8\r\nServer: Microsoft-HTTPAPI/2.0\r\nDate: Mon, 08 Mar 2021 11:55:00 GMT\r\n"
                ]
            }
        }
        ```
        For more information please visit the [DeleteCon documentation](http://balmoral.ifsconnect.net/integration/web-service/deletecon/ "DeleteCon documentation"){target="_blank"}.

___
### TrackingEvents

When the TrackingEvents configuration is selected the service will call the TrackingEvents resource.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Conid | The SmartFreight internal consignment identifier. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the TrackingEvents method to use the TrackingEvents resource.

        ![TrackingEvents Configuration](/assets/images/services/smartfreight-service/trackingevents-configuration.png "TrackingEvents Configuration")

    === "2. Service data setup"

        This method doesn't require any service data setup.
    
    === "3. Output Data"

        The TrackingEvents call will return a TrackingEventsResult like the following:
        
        ```json
        {
            "data": {
                "TrackingEventsResult": {
                    "Statistics": [
                        "\n\t"
                    ],
                    "Events": [
                        "\n\t"
                    ]
                }
            },
            "metadata": {
                "statusCode": "200",
                "headers": [
                    "HTTP/1.1 200 OK\r\nContent-Length: 577\r\nContent-Type: text/xml; charset=utf-8\r\nServer: Microsoft-HTTPAPI/2.0\r\nDate: Mon, 08 Mar 2021 12:17:32 GMT\r\n"
                ]
            }
        }
        ```
        For more information please visit the [TrackingEvents documentation](http://balmoral.ifsconnect.net/integration/web-service/trackingevents/ "TrackingEvents documentation"){target="_blank"}.