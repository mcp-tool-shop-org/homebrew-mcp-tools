class WebsketchCli < Formula
  desc "CLI for rendering, diffing, and fingerprinting WebSketch IR captures"
  homepage "https://github.com/mcp-tool-shop-org/websketch-cli"
  url "https://github.com/mcp-tool-shop-org/websketch-cli/archive/refs/tags/v0.2.1.tar.gz"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(libexec)
    bin.install_symlink libexec/"bin/websketch"
  end

  test do
    assert_match "websketch", shell_output("#{bin}/websketch --help")
  end
end
