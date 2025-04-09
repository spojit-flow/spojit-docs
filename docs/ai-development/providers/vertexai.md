---
description: VertexAI's Large Language Models (LLMs) can be integrated into various workflows to automate tasks, enhance decision-making, and improve customer experiences, such as chatbots, content generation, and data analysis. By leveraging LLMs, businesses can power a range of applications, from conversational interfaces and text summarization to language translation and sentiment analysis, to drive efficiency, innovation, and revenue growth.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___

Vertex AI is a suite of machine learning (ML) services provided by Google Cloud that enables developers to build, deploy, and manage ML models at scale, with features such as model training, deployment, and management. The platform supports a wide range of ML frameworks and models, including large language models, and provides tools for data preparation, model tuning, and model serving, making it easier to integrate AI into applications and workflows.
___
### Authorization

The following authorization configuration needs to filled out in order to use VertexAI models:

--8<-- "docs/ai-development/providers/llm-auth.md"

### Models

The following VertexAI models can be used:

| Model        | Description                  | Vision   | Tools  |
|--------------|------------------------------|----------|--------|
| gemini-2.0-flash-exp | Their workhorse model with low latency and enhanced performance | TRUE     | TRUE   |

!!! info "Don't see a model you want to use?"

    We are adding new models all the time. [Contact us](https://www.spojit.com/contact){target="_blank"} now and we'll look at adding the model you want.
