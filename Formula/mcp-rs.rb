# Homebrew formula for mcp-rs (#578). The tap n-takatsu/homebrew-tap has a
# copy of this file (Formula/mcp-rs.rb), which its workflow updates for each
# release. It installs the prebuilt binary from the GitHub release. The
# version comes from the URL.
class McpRs < Formula
  desc "MCP server for WordPress, databases and external MCP plugins"
  homepage "https://n-takatsu.github.io/mcp-rs/"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    # The release has a macOS build for Apple Silicon only
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/n-takatsu/mcp-rs/releases/download/v0.29.0/mcp-rs-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "d4f9d2b7f2ef27b86bdc01548cef89b94aff9a812db92a48ac8904347e2458f8"
    end
  end

  on_linux do
    # The release has a Linux build for x86_64 only
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/n-takatsu/mcp-rs/releases/download/v0.29.0/mcp-rs-v0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b58a9dcd34075cb2b665c4dc6f12da4025df7abf2ce9a56afb31249fa8b7bb6"
    end
  end

  def install
    # README・LICENSEは、Homebrewが自動で入れる
    bin.install "mcp-rs"
  end

  def caveats
    <<~EOS
      Set up mcp-rs (WordPress credentials, config file, and registering it
      with Claude Desktop, Claude Code and GitHub Copilot) with:
        mcp-rs init
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-rs --version")
  end
end
