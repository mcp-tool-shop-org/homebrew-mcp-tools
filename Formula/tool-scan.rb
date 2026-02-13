class ToolScan < Formula
  include Language::Python::Virtualenv

  desc "Security scanner for MCP (Model Context Protocol) tools"
  homepage "https://github.com/mcp-tool-shop-org/tool-scan"
  url "https://github.com/mcp-tool-shop-org/tool-scan/archive/refs/heads/main.tar.gz"
  sha256 "a63f8e610cfbaafec43b5ccfba0c9d89d3e45a98b9cc27a41a31b7a1afab2a2a"
  version "1.0.1"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "1.0", shell_output("#{bin}/tool-scan --version 2>&1", 1)
  end
end
