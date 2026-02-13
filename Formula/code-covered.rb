class CodeCovered < Formula
  include Language::Python::Virtualenv

  desc "Find coverage gaps and generate the tests you're missing"
  homepage "https://github.com/mcp-tool-shop-org/code-covered"
  url "https://github.com/mcp-tool-shop-org/code-covered/archive/refs/heads/main.tar.gz"
  version "0.5.0"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "code-covered", shell_output("#{bin}/code-covered --help")
  end
end
