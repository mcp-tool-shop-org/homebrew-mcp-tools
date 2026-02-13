class FileCompass < Formula
  include Language::Python::Virtualenv

  desc "Semantic file search for AI workstations using HNSW indexing"
  homepage "https://github.com/mcp-tool-shop-org/file-compass"
  url "https://github.com/mcp-tool-shop-org/file-compass/archive/refs/heads/main.tar.gz"
  version "0.1.1"
  license "MIT"

  depends_on "ollama"
  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      file-compass requires Ollama with an embedding model.
      After installation, run:
        ollama pull nomic-embed-text
    EOS
  end

  test do
    assert_match "file-compass", shell_output("#{bin}/file-compass --help")
  end
end
