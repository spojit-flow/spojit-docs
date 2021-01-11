---
template: overrides/main.html
---
The start service is the starting point for incoming webhooks and realtime requests.  When provided the service will take any incoming data and create a new output object.

??? spojit-example "Example configuration and mapping"

    === "1. Configuration"

        The following example shows you how to use the start service to create a new output object.  There is no required configuration for this service.

    === "2. Service data setup"

        The start service doesn't require any service data setup.
    
    === "3. Output Data"

        Given the following incoming webhook:

        ```JSON
        {
            "email": "john.doe@example.com",
            "first_name": "John",
            "last_name": "Doe",
            "username": "john.doe",
            "billing": {
                "first_name": "John",
                "last_name": "Doe",
                "company": "",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US",
                "email": "john.doe@example.com",
                "phone": "(555) 555-5555"
            },
            "shipping": {
                "first_name": "John",
                "last_name": "Doe",
                "company": "",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US"
            }
        }
        ```
        
        In this example the following output will be generated automatically by this service after it is run:

        ```json
        {
            "data": {
                "email": "john.doe@example.com",
                "first_name": "John",
                "last_name": "Doe",
                "username": "john.doe",
                "billing": {
                    "first_name": "John",
                    "last_name": "Doe",
                    "company": "",
                    "address_1": "969 Market",
                    "address_2": "",
                    "city": "San Francisco",
                    "state": "CA",
                    "postcode": "94103",
                    "country": "US",
                    "email": "john.doe@example.com",
                    "phone": "(555) 555-5555"
                },
                "shipping": {
                    "first_name": "John",
                    "last_name": "Doe",
                    "company": "",
                    "address_1": "969 Market",
                    "address_2": "",
                    "city": "San Francisco",
                    "state": "CA",
                    "postcode": "94103",
                    "country": "US"
                }
                },
            "metadata": []
        }
        ```