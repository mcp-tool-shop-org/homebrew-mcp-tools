class ToolScan < Formula
  include Language::Python::Virtualenv

  desc "Security scanner for MCP (Model Context Protocol) tools"
  homepage "https://github.com/mcp-tool-shop-org/tool-scan"
  url "https://github.com/mcp-tool-shop-org/tool-scan/archive/refs/heads/main.tar.gz"
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
