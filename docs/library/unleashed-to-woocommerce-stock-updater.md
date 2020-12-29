!!! info "Schedule-based integration (min. 1 minute interval)"

## Introduction
The Unleashed to WooCommerce Stock Updater integration template solves the issue of overselling online and eliminates any manual labour associated with keeping your inventory levels up to date and in sync between Unleashed Software and your WooCommerce online store.

In less than 5 minutes, you will be able to reap the benefits of this integration, saving you countless hours of manual labour each and every month and leaving you more time to focus on your business.

After a simple step-by-step wizard guiding you through the initial configuration, the Spojit platform gives you the ability to choose how often you would like to check Unleashed Software for any stock level updates, starting at one minute intervals. Once set, the platform will check for any updates to stock levels in Unleashed and seamlessly update your WooCommerce online store as per the schedule.

You stay in control of the integration link and have the ability to change the schedule as you see fit. Spojit gives you detailed logs each time the integration starts, giving you insight into the integration’s performance.

<!-- ## What to expect -->

## Instructions
#### 1. Introduction

  The following instructions outline what is needed to setup the Unleashed to WooCommerce stock updater. We will get API keys from Unleashed, create/get API keys from WooCommerce, add them both in Spojit, turn on the Legacy API in WooCommerce and then create a schedule to specify when the integration will run.

#### 2. Unleashed Authorization

  In order for the integration to be able to connect with Unleashed, API keys need to be copied from Unleashed into Spojit.

??? info "View steps..."
    --8<-- "docs/connectors/unleashed/unleashed-authorization.md"
  
#### 3. WooCommerce Authorization

  In order for the integration to be able to connect with WooCommerce, API Keys need to be generated and granted permission to read and write data from WooCommerce.

??? info "View steps..."
    --8<-- "docs/connectors/woocommerce/woocommerce-authorization.md"

#### 4. Enable Legacy Mode in WooCommerce

  Because of the batch processing of the stock and its reliance on SKU data Legacy Mode needs to be enabled in WooCommerce to send batch stock updates with SKU and quantity values

??? info "View steps..."
    --8<-- "docs/connectors/woocommerce/woocommerce-legacy-api.md"
  
#### 5. Set Schedule

  Set a schedule to run this integration.  Find out more in the [Schedule](/user-guide/integration/edit/schedule)  section.