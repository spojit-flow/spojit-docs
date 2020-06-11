---
template: overrides/main.html
---

!!! warning "Not all integrations require webhook (ie. scheduled / polling integrations)."

    Webhook tab is accessible only for integrations which require or support webhooks. On scheduled integrations where webhooks are not supported you may find the ‘Webhook’ tab disabled, in which case please refer to the specific integration template in our [Library](../../library/index.md) section (you may be required to enable and configure schedule instead).


!!! info "Webhooks - what are they? https://en.wikipedia.org/wiki/Webhook"

    In simple terms, there are two main ways in which applications on the web communicate and share information - either by polling or using webhooks.

    Polling refers to one application periodically asking another if something happened. This requires a scheduler and can be inefficient as there may not be any updates in the requested period. Webhook on the other hand refers to one application sending information to another when something happens, essentially near real-time callbacks/notifications of changes.

    **Simplified Example:** Keeping inventory levels in sync between online shop and warehouse system.

    - **Polling/Schedule:** Online store asks warehouse system every 10 minutes if there are any stock updates.
    - **Webhook:** Warehouse system sends notification to online store every time there is an update to stock levels in the warehouse.

    Spojit platform allows you to generate a unique webhook URL for an integration which can then be entered into a 3rd party system (ie. the Warehouse system from the example above) so that every time there is an update in the warehouse, the warehouse app sends info to the provided URL which in turn starts your integration.


## Instructions
### 1. Log in to your account

### 2. Access 'My Integrations' page

  You can access the page via the main menu by expanding  the 'Integrations' menu item and selecting 'My Integrations'. You should see a table listing all your integrations here.

  ![Access My Integrations Page](/assets/images/access-library.png"Access My Integrations Page")

### 3. Enter 'Edit Integration' page

  Enter the Edit integration screen by clicking on the integration table row or the blue ‘pencil’ icon button at the end of a table row. Switch to 'Webhook' tab.

### 4. Enable webhook, note URL

  Enable webhook by switching the ‘Enabled’ toggle at the top of the page. This will generate a unique URL for your integration which you can enter into 3rd party system.

  ![Edit Integration - Webhook Activate](/assets/images/edit-integration-webhook.png "Edit Integration - Webhook Activate")

### 5. Save changes

  Don't forget to save your changes. The ‘Save’ button can be found in the header of the Edit integration screen (top right corner).
