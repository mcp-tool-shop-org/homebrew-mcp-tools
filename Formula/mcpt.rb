class Mcpt < Formula
  include Language::Python::Virtualenv

  desc "CLI for discovering and running MCP Tool Shop tools"
  homepage "https://github.com/mcp-tool-shop-org/mcpt"
  url "https://github.com/mcp-tool-shop-org/mcpt/archive/refs/tags/v0.1.0.tar.gz"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "mcpt", shell_output("#{bin}/mcpt --help")
  end
end
