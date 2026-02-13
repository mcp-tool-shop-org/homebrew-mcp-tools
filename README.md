# MCP Tool Shop - Homebrew Tap

Official Homebrew tap for [MCP Tool Shop](https://github.com/mcp-tool-shop-org) CLI tools.

## Installation

```bash
brew tap mcp-tool-shop-org/mcp-tools
```

## Available Tools

### Security & Analysis

#### tool-scan (v1.0.1) ⭐ STABLE
Security scanner for MCP (Model Context Protocol) tools. Detects tool poisoning, prompt injection, data exfiltration, and command injection attacks.

```bash
brew install tool-scan
tool-scan --help
```

#### code-covered (v0.5.0)
Find coverage gaps and generate missing tests. Analyzes code coverage and suggests test improvements.

```bash
brew install code-covered
code-covered --help
```

### Semantic Search

#### tool-compass (v2.1.0)
Semantic MCP Tool Discovery - Find the right tool by intent, not memory.

```bash
brew install tool-compass
# Requires Ollama
brew install ollama
ollama pull nomic-embed-text
tool-compass --sync
```

#### file-compass (v0.1.1)
Semantic file search for AI workstations using HNSW vector indexing. Find files by describing what you're looking for.

```bash
brew install file-compass
# Requires Ollama
ollama pull nomic-embed-text
```

### Development Tools

#### mcpt (v0.1.0)
CLI for discovering and running MCP Tool Shop tools - a package manager for MCP tools.

```bash
brew install mcpt
mcpt list
```

#### headless-wheel-builder (v0.3.1)
Universal Python wheel builder supporting local paths, git repos, and CI/CD pipelines.

```bash
brew install headless-wheel-builder
hwb --help
```

#### websketch-cli (v0.2.1)
CLI for rendering, diffing, and fingerprinting WebSketch IR captures.

```bash
brew install websketch-cli
websketch --help
```

## Quick Start

Install all tools:
```bash
brew tap mcp-tool-shop-org/mcp-tools
brew install tool-scan tool-compass file-compass code-covered mcpt headless-wheel-builder websketch-cli
```

Install recommended tools only:
```bash
brew tap mcp-tool-shop-org/mcp-tools
brew install tool-scan tool-compass  # Most mature and useful
```

## Requirements

Some tools require Ollama for semantic search (tool-compass, file-compass):
```bash
brew install ollama
ollama pull nomic-embed-text
```

## Documentation

For detailed documentation, see the individual repositories:
- [tool-scan](https://github.com/mcp-tool-shop-org/tool-scan)
- [tool-compass](https://github.com/mcp-tool-shop-org/tool-compass)
- [file-compass](https://github.com/mcp-tool-shop-org/file-compass)
- [code-covered](https://github.com/mcp-tool-shop-org/code-covered)
- [mcpt](https://github.com/mcp-tool-shop-org/mcpt)
- [headless-wheel-builder](https://github.com/mcp-tool-shop-org/headless-wheel-builder)
- [websketch-cli](https://github.com/mcp-tool-shop-org/websketch-cli)

## License

All tools are licensed under MIT License.
