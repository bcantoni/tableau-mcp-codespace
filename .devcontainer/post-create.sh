#!/bin/sh
set -e

npm install -g npm@latest
npm install -g @github/copilot
npm install -g @tableau/mcp-server

# Configure GitHub Copilot CLI MCP server for Tableau
# The copilot CLI reads MCP servers from ~/.config/github-copilot/mcp.json
# Secrets (SERVER, SITE_NAME, PAT_NAME, PAT_VALUE) are injected as env vars
# by Codespaces and expanded here at container creation time.
mkdir -p "$HOME/.config/github-copilot"
cat > "$HOME/.config/github-copilot/mcp.json" << MCPEOF
{
  "mcpServers": {
    "tableau": {
      "command": "npx",
      "args": ["-y", "@tableau/mcp-server@latest"],
      "env": {
        "TRANSPORT": "stdio",
        "SERVER": "${SERVER}",
        "SITE_NAME": "${SITE_NAME:-}",
        "PAT_NAME": "${PAT_NAME}",
        "PAT_VALUE": "${PAT_VALUE}",
        "DATASOURCE_CREDENTIALS": "",
        "DEFAULT_LOG_LEVEL": "info",
        "INCLUDE_TOOLS": "",
        "EXCLUDE_TOOLS": "",
        "MAX_RESULT_LIMIT": "",
        "DISABLE_QUERY_DATASOURCE_FILTER_VALIDATION": ""
      }
    }
  }
}
MCPEOF
