# Tableau MCP Codespace

A GitHub Codespace for working with [Tableau MCP](https://github.com/tableau/tableau-mcp) using GitHub Copilot AI.

## Overview

Tableau MCP provides a standard interface for AI clients to easily connect with and explore Tableau datasources.

[Simon Willison](https://simonwillison.net/2025/Aug/13/codespaces-llm/) explained that codespaces include a Github token which works with all the AI models your account can use:

> [GitHub Codespaces](https://github.com/features/codespaces) provides full development environments in your browser, and is free to use with anyone with a GitHub account. Each environment has a full Linux container and a browser-based UI using VS Code.
>
> I found out today that GitHub Codespaces come with a GITHUB_TOKEN environment variable... and that token works as an API key for accessing LLMs in the [GitHub Models](https://docs.github.com/en/github-models) collection, which includes [dozens of models](https://github.com/marketplace?type=models) from OpenAI, Microsoft, Mistral, xAI, DeepSeek, Meta and more.

With that in mind, I created this simple project to demonstrate running Tableau MCP in a codespace instance featuring:

- Tableau MCP - the latest version, running "locally" and configured via environment variables
- VSCode Copilot chat - Ask, Agent and Plan modes are all available, along with all the Copilot AI models
- Copilot CLI - the latest version installed and ready to use (including the same set of AI models)

## Get Started

Click here to launch a codespace: <https://codespaces.new/bcantoni/tableau-mcp-codespace/tree/main?quickstart=1>

In the Copilot chat window on the right, type "hello" to wake up and initialize the chat interface. This take a minute and it will respond with something like "Hello how can I help?".

In the terminal window on the bottom, run `copilot` to start using the command line experience. Since this is a VM you could also try running in YOLO mode with `copilot --allow-all` to prevent all the permission checks.

Follow the Tableau MCP documentation to explore your Tableau datasources with some queries.
