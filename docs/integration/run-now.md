---
template: overrides/main.html
---

!!! warning "Not every integration can be run manually"

    Webhook integrations which rely on notifications from 3rd party systems cannot be run on-demand using this functionality. Usually only scheduled integrations will allow you to use Run Now function.

!!! info "Run Now"

    Run Now functionality refers to running an integration manually (without schedule set).

    The settings of ‘Run Now’ differs from integration to integration. Some integrations require you to set options such as start date or end date, others do not require options. It all depends on the integration itself and what given integration does. If in doubt, refer to your specific integration in our [Library](../../library/index.md) section.


## Instructions
### 1. Log in to your account

### 2. Access 'My Integrations' page

  You can access the page via the main menu by expanding  the 'Integrations' menu item and selecting 'My Integrations'. You should see a table listing all your integrations here.

  ![Access My Integrations Page](/assets/images/access-library.png"Access My Integrations Page")

### 3. Locate the integration which you wish to run

  Find the integration you wish to run manually in the My Integrations table. If given integration can be run manually, the run-now button (play icon) will be enabled.

### 4. Enter all required options if any, and confirm to ‘Run Now’.

  Click on the 'play' icon to initiate the manual run. If given integration requires additional configuration you will be presented with a form where you can enter values for each option (ie. last updated date). Enter all required options if any, and confirm to ‘Run Now’. When you confirm, the integration is queued. You can access the logs of the manual run from Edit integration page. Refer to [Logs](edit/logs.md) for more details.


![Integration - Run Now](/assets/images/run-now.gif "Integration - Run Now")
