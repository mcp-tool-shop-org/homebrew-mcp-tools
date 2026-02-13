class HeadlessWheelBuilder < Formula
  include Language::Python::Virtualenv

  desc "Universal headless Python wheel builder"
  homepage "https://github.com/mcp-tool-shop-org/headless-wheel-builder"
  url "https://github.com/mcp-tool-shop-org/headless-wheel-builder/archive/refs/heads/main.tar.gz"
  version "0.3.1"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hwb", shell_output("#{bin}/hwb --help")
  end
end
