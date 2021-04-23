---
description: A workflow is a sequence of steps, where each step is responsible for a unique function. The collection of steps coupled with data flow controls and connections between steps forms a workflow which represents a process. 
---
---
template: overrides/main.html
---

!!! info "Workflow - FLOW Subscribers Only"

    Workflows are only available to our FLOW subscribers. LITE subscribers do not have access to workflows.

## Introduction to Workflows

### What is a workflow
  A workflow is a sequence of steps, where each step is responsible for a unique function. The collection of steps coupled with data flow controls and connections between steps forms a workflow which represents a process. Process can be as simple as 'send a notification via SMS' or as complex as a home loan application.

### Workflow Designer
  The Spojit platform offers a visual designer where you can model, test, manage, and automate your processes. Our workflow designer allows you to add any number of services (steps) onto a canvas and connect them together, creating a logical sequence of steps.

  As a user, you have complete access to data at each step (both input and output data of each service). A process is modeled through a combination of services using the visual workflow designer. You add one or more services onto the canvas, and configure and connect those in order to model a process.

  Workflow designer allows you to schedule your workflows to run automatically at your specified times.

  ![Workflow Designer](/assets/images/workflow/visual-designer.png "Workflow Designer")

### Services
  Each service is an independent mini application facilitating a unique function (ie. send SMS, or fetch data from a server). Depending on complexity, a service may require configuration and/or authorization. For example a mailing service will require you to configure the email recipients, or the subject of the email. A http service usually requires you to add some kind of authorization.

  ![Service Config](/assets/images/workflow/service-config.png "Service Config")

  A service has an input data and output data, both of which you can control directly from the service configuration.

#### Services - Data Mapping
  A service input data can be mapped and transformed using a built-in mapper service which allows you to define your data structure (schema), map fields from other services, and also apply functions to transform the data.

   ![Service Data - Map](/assets/images/workflow/service-data-map.png "Service Data - Map")

#### Services - Output Data
  The Spojit platform generates service output schema for you automatically. You can however filter and change the data outputed by each service directly from the service 'OUTPUT' configuration.

  ![Service Output - Schema](/assets/images/workflow/service-output-data.png "Service Output - Schema")

### Data Flow Controls
  Data flow controls are special services which allow you to inject special logic into the workflow and which control the flow of the data. An example flow control would be a filter or an iterator. Filter allows you to conditionally allow or deny futher processing and iterator flow control allows you to work with arrays (data multiples; ie. many sales orders retrieved from a server via API).

### Workflow vs Integration
  All integrations are essentially ready-made workflows with a well defined set of configuration options which you have access to and which you can modify. As an end user, you can not go beyond these configuration options.
  
  Workflow takes it a step further and gives you complete access to the integration itself in our visual designer, where you can modify existing steps, add new ones, and change configuration and flow of data however you like. Workflows give you a complete access to process automation.

