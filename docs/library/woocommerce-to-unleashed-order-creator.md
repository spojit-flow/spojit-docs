!!! info "Near real-time integration (webhook)"

## Introduction
The WooCommerce to Unleashed Order Creator integration template helps you keep track of your sales orders by sending any newly created WooCommerce sales order automatically into your Unleashed Software for further processing. As a near real-time webhook integration, an order is sent to Unleashed within seconds from when it is created in WooCommerce.

Spojit gives you detailed logs each time the integration starts, giving you insight into the integration’s performance.

## What to expect

## Instructions
#### 1. Introduction

  The following instructions outline what is needed to setup the WooCommerce to Unleashed order creator.  We will get API keys from Unleashed, add them and setup the integration within Spojit and then create a webhook in WooCommerce to send newly created orders for processing.

#### 2. Unleashed Authorization

  In order for the integration to be able to connect with Unleashed, API keys need to be copied from Unleashed into Spojit.

??? info "View steps..."
    --8<-- "docs/connectors/unleashed/unleashed-authorization.md"
  
#### 3. Integration Configuration

  Enter the “Warehouse Code” to associate with new sales orders in Unleashed.  Choose to create sales orders in Unleashed as Parked, Placed, or Completed.

??? info "How to find a warehouse code..."
    --8<-- "docs/connectors/unleashed/unleashed-warehouse-code.md"

#### 4. Configure Webhook

  Follow the steps and create a webhook in WooCommerce with the “Order created” topic

??? info "View steps..."
    --8<-- "docs/connectors/woocommerce/woocommerce-webhooks.md"
