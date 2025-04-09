---
template: overrides/main.html
---

!!! tip "Want to use your own custom models in the platform?"

    [Contact us](https://www.spojit.com/contact){target="_blank"} now to find out how to add your own custom model.


# AI Development

Spojit empowers businesses to automate and optimize complex workflows by seamlessly integrating Large Language Models (LLMs) into their operations, unlocking a wide range of applications across the organization. From automating customer support and sales processes to generating high-quality content and analyzing market trends, Spojit's flexible platform enables businesses to leverage LLMs in countless ways to drive growth and efficiency. Whether you're looking to improve internal workflows or enhance customer experiences, Spojit provides the tools and expertise needed to harness the full potential of AI for business success.

## Quickstart Guide

This quickstart guide will show you a simple example of getting a LLM running in your workflow. We will connect to an external API and translate some text from the response into a different language. It assumes that you already know how to [create a workflow](/getting-started/workflows/create-workflow "Create workflows"), [add](/getting-started/workflows/add-service "Add a service") and [connect](/getting-started/workflows/connect-services "Connect a service") a service, [map data](/getting-started/#data-mapping "Mapping data") to transform your data and [run a workflow](/getting-started/workflows/run-workflow "Run a workflow"). If you are just starting or need a refresher head over to our [getting started](/getting-started "Getting Started Guide") guide.

### Add services

We'll start by adding a [JSON REST service](/reference/services/rest-service "JSON REST Service") to the canvas with the following configuration:

| Method | API URL                                             | 
|--------|-----------------------------------------------------|
| `get`  | https://json-placeholder.mock.beeceptor.com/posts/1 |

When the service is run it will return the following JSON object:

```json
{
  "userId": 1,
  "id": 1,
  "title": "Introduction to Artificial Intelligence",
  "body": "Learn the basics of Artificial Intelligence and its applications in various industries.",
  "link": "https://example.com/article1",
  "comment_count": 8
}
```

Next we are going to add the [LLM Chat service](/reference/services/rest-service "LLM Chat Service") to the canvas and link it to the RESET service. Add the following configuration to the LLM Chat service:

| Method   | System Prompt | User Prompt        |
|----------| ----------- |-------------------------|
| `simple` | Translate the following from English into Italian | Map the body field from the REST service |

![LLM Chat Configuration](/assets/images/ai-development/llm-chat-configuration.png "LLM Chat Configuration")

### Choose a provider

Next go to the LLM Chat service and click on the Authorization section. Click on the "Add New Authorization" button and a popup will appear.

Select the Provider and Model and enter your API Key:

![LLM Provider Configuration](/assets/images/ai-development/provider-configuration.png "LLM Provider Configuration")

The following providers can be used in our platform:

--8<-- "docs/ai-development/providers-list.md"

Choose the best provider and model for your use case.

### Run your workflow

Save your workflow and click on ___Run Now___ to run the workflow and you should get an output similar to the following:

```json
{
  "data": "Impara i fondamenti dell'Intelligenza Artificiale e le sue applicazioni in diversi settori industriali.",
  "metadata": {
    "usage": {
      "input_tokens": 35,
      "output_tokens": 28,
      "total_tokens": 63
    }
  }
}
```

The response from the model will be in the `data` field while the `metadata` will have the token usage for the request. 