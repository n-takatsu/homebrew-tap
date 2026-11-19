# n-takatsu Homebrew tap

[Homebrew](https://brew.sh/) tap for [mcp-rs](https://github.com/n-takatsu/mcp-rs), an MCP server that gives AI clients tools for WordPress, databases (PostgreSQL, MySQL, MariaDB) and external MCP plugins.

```bash
brew install n-takatsu/tap/mcp-rs
mcp-rs init
```

macOS (Apple Silicon) and Linux (x86_64). Update with `brew upgrade mcp-rs`, then restart the MCP clients. `mcp-rs init` registers `$(brew --prefix)/opt/mcp-rs/bin/mcp-rs`, which stays the same across updates. See the [Getting Started guide](https://n-takatsu.github.io/mcp-rs/docs/guides/#package-managers).

The formula installs the ready-built mcp-rs from the [mcp-rs releases](https://github.com/n-takatsu/mcp-rs/releases) and checks its SHA256. A daily workflow updates it to the latest release, after installing it to test. The source of the formula is [`packaging/homebrew/mcp-rs.rb`](https://github.com/n-takatsu/mcp-rs/blob/develop/packaging/homebrew/mcp-rs.rb) in the mcp-rs repository. Report problems in [mcp-rs issues](https://github.com/n-takatsu/mcp-rs/issues).
