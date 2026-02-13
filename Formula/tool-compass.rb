class ToolCompass < Formula
  include Language::Python::Virtualenv

  desc "Semantic MCP Tool Discovery - Find the right tool by intent, not memory"
  homepage "https://github.com/mcp-tool-shop-org/tool-compass"
  url "https://github.com/mcp-tool-shop-org/tool-compass/archive/refs/tags/v2.1.0.tar.gz"
  license "MIT"

  depends_on "ollama"
  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      tool-compass requires Ollama with the nomic-embed-text model.
      After installation, run:
        ollama pull nomic-embed-text
        tool-compass --sync
    EOS
  end

  test do
    assert_match "config", shell_output("#{bin}/tool-compass --help")
  end
end
