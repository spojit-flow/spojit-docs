---
description: Integrate Netsuite SOAP.  Create and modify a Netsuite integration with extraction of resources within the Netsuite SOAP web service. This Netsuite service can be added to your workflow and connect and share data with other services.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
   
NetSuite is the leading integrated cloud business software suite, including business accounting, ERP, CRM and ecommerce software.  This service can facilitate the extraction of resources within the Netsuite SOAP web service.

!!! tip "Tip" 

    Full documentation of Netsuite resources and configuration is available in the [Netsuite Help Center](https://system.na1.netsuite.com/app/help/helpcenter.nl?fid=book_1559132836.html "Netsuite SOAP Documentation"){target="_blank"}.
___
### Netsuite Authorization

This service uses the Token Based Authentication (TBA) approach outlined in the [Netsuite Help Center](https://system.netsuite.com/app/help/helpcenter.nl?fid=section_4247337262.html "Netsuite API Token Based Authentication"){target="_blank"}.  The following authorization configuration needs to filled out in order to connect with Netsuite:

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Company URL | The company endpoint for your Netsuite instance (i.e. https://****.suitetalk.api.netsuite.com). | - | TRUE |
| Account ID | Your account ID. | - | TRUE |
| Consumer Key | A consumer key for your Netsuite instance. | - | TRUE |
| Consumer Secret | A consumer secret for your Netsuite instance. | - | TRUE |
| Token ID | A token ID for your Netsuite instance. | - | TRUE |
| Token Secret | A token secret for your Netsuite instance. | - | TRUE |

The following example configuration shows you how to configure the authorziation for Netsuite:

![Netsuite Authorization Configuration](/assets/images/services/netsuite-soap-service/authorization-configuration.png "Netsuite Authorization Configuration")

___
### Get Entity

When the Get Entity configuration is selected the service will retrieve a resource from a given ID.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Entity | The name of the resource you want to retrieve. | - | TRUE |
| Entity ID | The unique identifier of the resource that you want to retrieve. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the Get Entity method to get data for a particular entity.

        ![Netsuite Soap Get Entity Configuration](/assets/images/services/netsuite-soap-service/get-entity-configuration.png "Netsuite Soap Get Entity Configuration")

    === "2. Service data setup"

        This method doesn't require any service data setup.
    
    === "3. Output Data"

        The call will return a single entity like the following:
        
        ```json
        {
            "data": {
                "readResponse": {
                "status": {
                    "statusDetail": null,
                    "isSuccess": false
                },
                "record": {
                    "createdDate": "2020-11-20T19:24:42.000-08:00",
                    "customForm": null,
                    "entity": {
                        "internalId": "4324144",
                        "externalId": null,
                        "type": null,
                        "name": "MacDonald Farms"
                    },
                    "job": null,
                    "currency": {
                        "internalId": "1",
                        "externalId": null,
                        "type": null,
                        "name": "AUD"
                    },
                    "drAccount": null,
                    "fxAccount": null,
                    "tranDate": "2020-11-20T05:00:00.000-08:00",
                    "tranId": "Service-order-ref-123",
                    "entityTaxRegNum": null,
                    "source": null,
                    "createdFrom": null,
                    "orderStatus": null,
                    "nextBill": null,
                    "opportunity": null,
                    "salesRep": null,
                    "contribPct": null,
                    "partner": null,
                    "salesGroup": null,
                    "syncSalesTeams": null,
                    "leadSource": null,
                    "startDate": null,
                    "endDate": null,
                    "otherRefNum": "5434323422",
                    "memo": "Service_order_ref_123",
                    "salesEffectiveDate": null,
                    "excludeCommission": null,
                    "totalCostEstimate": 98.98,
                    "estGrossProfit": 34.33,
                    "estGrossProfitPercent": 43.44,
                    "exchangeRate": 1,
                    "promoCode": null,
                    "currencyName": "AUD",
                    "discountItem": null,
                    "discountRate": null,
                    "isTaxable": null,
                    "taxItem": null,
                    "taxRate": null,
                    "toBePrinted": false,
                    "toBeEmailed": false,
                    "email": "someone@example.com",
                    "toBeFaxed": null,
                    "fax": null,
                    "messageSel": null,
                    "message": null,
                    "paymentOption": null,
                    "inputAuthCode": null,
                    "inputReferenceCode": null,
                    "checkNumber": null,
                    "paymentCardCsc": null,
                    "paymentProcessingProfile": null,
                    "handlingMode": null,
                    "outputAuthCode": null,
                    "outputReferenceCode": null,
                    "paymentOperation": null,
                    "dynamicDescriptor": null,
                    "billingAddress": {
                        "internalId": "434234232",
                        "country": "Australia",
                        "attention": "Ronald MacDonald",
                        "addressee": "",
                        "addrPhone": "0444444444",
                        "addr1": "123 Sample Street",
                        "addr2": null,
                        "addr3": null,
                        "city": "Sydney",
                        "state": "NSW",
                        "zip": "2000",
                        "override": true,
                        "customFieldList": {
                            "customField": [
                            
                            ]
                        },
                        "nullFieldList": null
                    },
                    "billAddressList": null,
                    "shippingAddress": {
                        "internalId": "434234232",
                        "country": "Australia",
                        "attention": "Ronald MacDonald",
                        "addressee": "",
                        "addrPhone": "0444444444",
                        "addr1": "123 Sample Street",
                        "addr2": null,
                        "addr3": null,
                        "city": "Sydney",
                        "state": "NSW",
                        "zip": "2000",
                        "override": true,
                        "customFieldList": {
                            "customField": [
                            
                            ]
                        },
                        "nullFieldList": null
                    },
                    "shipIsResidential": false,
                    "shipAddressList": null,
                    "fob": null,
                    "shipDate": null,
                    "actualShipDate": null,
                    "shipMethod": {
                        "internalId": "3234",
                        "externalId": null,
                        "type": null,
                        "name": "Express"
                    },
                    "shippingCost": 0,
                    "shippingTax1Rate": 10,
                    "isMultiShipTo": null,
                    "shippingTax2Rate": null,
                    "shippingTaxCode": {
                        "internalId": "3",
                        "externalId": null,
                        "type": null,
                        "name": "GST:STD"
                    },
                    "handlingTaxCode": null,
                    "handlingTax1Rate": null,
                    "handlingTax2Rate": null,
                    "handlingCost": null,
                    "trackingNumbers": null,
                    "linkedTrackingNumbers": null,
                    "shipComplete": null,
                    "paymentMethod": {
                        "internalId": "2",
                        "externalId": null,
                        "type": null,
                        "name": "VISA"
                    },
                    "shopperIpAddress": null,
                    "saveOnAuthDecline": true,
                    "canHaveStackable": false,
                    "creditCard": null,
                    "revenueStatus": null,
                    "recognizedRevenue": null,
                    "deferredRevenue": null,
                    "revRecOnRevCommitment": null,
                    "revCommitStatus": null,
                    "ccNumber": "************4444",
                    "ccExpireDate": "2023-02-01T00:00:00.000-08:00",
                    "ccName": "Bob Somebody",
                    "ccStreet": "123 Sample Street",
                    "ccZipCode": "2000",
                    "payPalStatus": null,
                    "creditCardProcessor": {
                        "internalId": "2",
                        "externalId": null,
                        "type": null,
                        "name": "Credit Card"
                    },
                    "payPalTranId": null,
                    "ccApproved": null,
                    "getAuth": null,
                    "authCode": "43453",
                    "ccAvsStreetMatch": null,
                    "ccAvsZipMatch": null,
                    "isRecurringPayment": false,
                    "ccSecurityCodeMatch": null,
                    "altSalesTotal": null,
                    "ignoreAvs": null,
                    "paymentEventResult": "_accept",
                    "paymentEventHoldReason": null,
                    "paymentEventType": "_captureAuthorization",
                    "paymentEventDate": "2016-11-20T23:39:00.000-08:00",
                    "paymentEventUpdatedBy": "somone@example.com",
                    "subTotal": 45.33,
                    "discountTotal": null,
                    "taxTotal": 18.57,
                    "altShippingCost": 0,
                    "altHandlingCost": null,
                    "total": 56.44,
                    "revRecSchedule": null,
                    "revRecStartDate": null,
                    "revRecEndDate": null,
                    "paypalAuthId": null,
                    "balance": null,
                    "paypalProcess": null,
                    "billingSchedule": null,
                    "ccSecurityCode": null,
                    "threeDStatusCode": null,
                    "class": null,
                    "department": null,
                    "subsidiary": {
                        "internalId": "1",
                        "externalId": null,
                        "type": null,
                        "name": "Example Company"
                    },
                    "intercoTransaction": null,
                    "intercoStatus": null,
                    "debitCardIssueNo": null,
                    "lastModifiedDate": "2021-03-31T16:24:30.000-07:00",
                    "nexus": null,
                    "subsidiaryTaxRegNum": null,
                    "taxRegOverride": null,
                    "taxPointDate": null,
                    "taxDetailsOverride": null,
                    "location": null,
                    "pnRefNum": "54543543",
                    "status": "Billed",
                    "tax2Total": null,
                    "terms": null,
                    "validFrom": null,
                    "vatRegNum": null,
                    "giftCertApplied": null,
                    "oneTime": null,
                    "recurWeekly": null,
                    "recurMonthly": null,
                    "recurQuarterly": null,
                    "recurAnnually": null,
                    "tranIsVsoeBundle": null,
                    "vsoeAutoCalc": null,
                    "syncPartnerTeams": null,
                    "salesTeamList": null,
                    "partnersList": null,
                    "giftCertRedemptionList": null,
                    "promotionsList": null,
                    "itemList": null,
                    "shipGroupList": null,
                    "accountingBookDetailList": null,
                    "taxDetailsList": null,
                    "customFieldList": {
                        "customField": [
                            {
                            "value": false,
                            "internalId": "543",
                            "scriptId": "custbody5"
                            }
                        ]
                    },
                    "internalId": "4345453",
                    "externalId": null,
                    "nullFieldList": null
                    }
                }
            },
            "metadata": {
                "statusCode": "200",
                "headers": [
                
                ]
            }
        }
        ```

___
### Search Entity

When the Search Entity configuration is selected the service will retrieve resources from a given set of search criteria.

| Option | Description | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| Entity | The name of the resource you want to retrieve. | - | TRUE |
| Last Modified Date | Search criteria based on the last time a resouce was modified (RFC 3339 (Y-m-d\TH:i:sP)). | - | FALSE |
| Limit | The maximum number of the resources you want to retrieve at a given time. | - | TRUE |

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to configure the Search Entity method to get data for a particular entity.

        ![Netsuite Soap Search Entity Configuration](/assets/images/services/netsuite-soap-service/search-entity-configuration.png "Netsuite Soap Search Entity Configuration")

    === "2. Service data setup"

        This method doesn't require any service data setup.
    
    === "3. Output Data"

        The call will return an array of enities like the following:
        
        ```json
        {
            "data": {
                "searchResult": {
                "status": {
                    "statusDetail": null,
                    "isSuccess": true
                },
                "totalRecords": 45713,
                "pageSize": 1,
                "totalPages": 45713,
                "pageIndex": 1,
                "searchId": "WEBSERVICES_54352342_54353453453453_a798g76d672",
                "recordList": {
                    "record": [
                    {
                        "createdDate": "2020-11-20T19:24:42.000-08:00",
                        "customForm": null,
                        "entity": {
                        "internalId": "4324144",
                        "externalId": null,
                        "type": null,
                        "name": "MacDonald Farms"
                        },
                        "job": null,
                        "currency": {
                        "internalId": "1",
                        "externalId": null,
                        "type": null,
                        "name": "AUD"
                        },
                        "drAccount": null,
                        "fxAccount": null,
                        "tranDate": "2020-11-20T05:00:00.000-08:00",
                        "tranId": "Service-order-ref-123",
                        "entityTaxRegNum": null,
                        "source": null,
                        "createdFrom": null,
                        "orderStatus": null,
                        "nextBill": null,
                        "opportunity": null,
                        "salesRep": null,
                        "contribPct": null,
                        "partner": null,
                        "salesGroup": null,
                        "syncSalesTeams": null,
                        "leadSource": null,
                        "startDate": null,
                        "endDate": null,
                        "otherRefNum": "5434323422",
                        "memo": "Service_order_ref_123",
                        "salesEffectiveDate": null,
                        "excludeCommission": null,
                        "totalCostEstimate": 98.98,
                        "estGrossProfit": 34.33,
                        "estGrossProfitPercent": 43.44,
                        "exchangeRate": 1,
                        "promoCode": null,
                        "currencyName": "AUD",
                        "discountItem": null,
                        "discountRate": null,
                        "isTaxable": null,
                        "taxItem": null,
                        "taxRate": null,
                        "toBePrinted": false,
                        "toBeEmailed": false,
                        "email": "someone@example.com",
                        "toBeFaxed": null,
                        "fax": null,
                        "messageSel": null,
                        "message": null,
                        "paymentOption": null,
                        "inputAuthCode": null,
                        "inputReferenceCode": null,
                        "checkNumber": null,
                        "paymentCardCsc": null,
                        "paymentProcessingProfile": null,
                        "handlingMode": null,
                        "outputAuthCode": null,
                        "outputReferenceCode": null,
                        "paymentOperation": null,
                        "dynamicDescriptor": null,
                        "billingAddress": {
                        "internalId": "434234232",
                        "country": "Australia",
                        "attention": "Ronald MacDonald",
                        "addressee": "",
                        "addrPhone": "0444444444",
                        "addr1": "123 Sample Street",
                        "addr2": null,
                        "addr3": null,
                        "city": "Sydney",
                        "state": "NSW",
                        "zip": "2000",
                        "override": true,
                        "customFieldList": {
                            "customField": [
                            
                            ]
                        },
                        "nullFieldList": null
                        },
                        "billAddressList": null,
                        "shippingAddress": {
                        "internalId": "434234232",
                        "country": "Australia",
                        "attention": "Ronald MacDonald",
                        "addressee": "",
                        "addrPhone": "0444444444",
                        "addr1": "123 Sample Street",
                        "addr2": null,
                        "addr3": null,
                        "city": "Sydney",
                        "state": "NSW",
                        "zip": "2000",
                        "override": true,
                        "customFieldList": {
                            "customField": [
                            
                            ]
                        },
                        "nullFieldList": null
                        },
                        "shipIsResidential": false,
                        "shipAddressList": null,
                        "fob": null,
                        "shipDate": null,
                        "actualShipDate": null,
                        "shipMethod": {
                        "internalId": "3234",
                        "externalId": null,
                        "type": null,
                        "name": "Express"
                        },
                        "shippingCost": 0,
                        "shippingTax1Rate": 10,
                        "isMultiShipTo": null,
                        "shippingTax2Rate": null,
                        "shippingTaxCode": {
                        "internalId": "3",
                        "externalId": null,
                        "type": null,
                        "name": "GST:STD"
                        },
                        "handlingTaxCode": null,
                        "handlingTax1Rate": null,
                        "handlingTax2Rate": null,
                        "handlingCost": null,
                        "trackingNumbers": null,
                        "linkedTrackingNumbers": null,
                        "shipComplete": null,
                        "paymentMethod": {
                        "internalId": "2",
                        "externalId": null,
                        "type": null,
                        "name": "VISA"
                        },
                        "shopperIpAddress": null,
                        "saveOnAuthDecline": true,
                        "canHaveStackable": false,
                        "creditCard": null,
                        "revenueStatus": null,
                        "recognizedRevenue": null,
                        "deferredRevenue": null,
                        "revRecOnRevCommitment": null,
                        "revCommitStatus": null,
                        "ccNumber": "************4444",
                        "ccExpireDate": "2023-02-01T00:00:00.000-08:00",
                        "ccName": "Bob Somebody",
                        "ccStreet": "123 Sample Street",
                        "ccZipCode": "2000",
                        "payPalStatus": null,
                        "creditCardProcessor": {
                        "internalId": "2",
                        "externalId": null,
                        "type": null,
                        "name": "Credit Card"
                        },
                        "payPalTranId": null,
                        "ccApproved": null,
                        "getAuth": null,
                        "authCode": "43453",
                        "ccAvsStreetMatch": null,
                        "ccAvsZipMatch": null,
                        "isRecurringPayment": false,
                        "ccSecurityCodeMatch": null,
                        "altSalesTotal": null,
                        "ignoreAvs": null,
                        "paymentEventResult": "_accept",
                        "paymentEventHoldReason": null,
                        "paymentEventType": "_captureAuthorization",
                        "paymentEventDate": "2016-11-20T23:39:00.000-08:00",
                        "paymentEventUpdatedBy": "somone@example.com",
                        "subTotal": 45.33,
                        "discountTotal": null,
                        "taxTotal": 18.57,
                        "altShippingCost": 0,
                        "altHandlingCost": null,
                        "total": 56.44,
                        "revRecSchedule": null,
                        "revRecStartDate": null,
                        "revRecEndDate": null,
                        "paypalAuthId": null,
                        "balance": null,
                        "paypalProcess": null,
                        "billingSchedule": null,
                        "ccSecurityCode": null,
                        "threeDStatusCode": null,
                        "class": null,
                        "department": null,
                        "subsidiary": {
                        "internalId": "1",
                        "externalId": null,
                        "type": null,
                        "name": "Example Company"
                        },
                        "intercoTransaction": null,
                        "intercoStatus": null,
                        "debitCardIssueNo": null,
                        "lastModifiedDate": "2021-03-31T16:24:30.000-07:00",
                        "nexus": null,
                        "subsidiaryTaxRegNum": null,
                        "taxRegOverride": null,
                        "taxPointDate": null,
                        "taxDetailsOverride": null,
                        "location": null,
                        "pnRefNum": "54543543",
                        "status": "Billed",
                        "tax2Total": null,
                        "terms": null,
                        "validFrom": null,
                        "vatRegNum": null,
                        "giftCertApplied": null,
                        "oneTime": null,
                        "recurWeekly": null,
                        "recurMonthly": null,
                        "recurQuarterly": null,
                        "recurAnnually": null,
                        "tranIsVsoeBundle": null,
                        "vsoeAutoCalc": null,
                        "syncPartnerTeams": null,
                        "salesTeamList": null,
                        "partnersList": null,
                        "giftCertRedemptionList": null,
                        "promotionsList": null,
                        "itemList": null,
                        "shipGroupList": null,
                        "accountingBookDetailList": null,
                        "taxDetailsList": null,
                        "customFieldList": {
                        "customField": [
                            {
                            "value": false,
                            "internalId": "543",
                            "scriptId": "custbody5"
                            }
                        ]
                        },
                        "internalId": "4345453",
                        "externalId": null,
                        "nullFieldList": null
                    }
                    ]
                },
                "searchRowList": null
                }
            },
            "metadata": {
                "statusCode": "200",
                "headers": [
                
                ]
            }
        }
        ```
