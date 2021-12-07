class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Panoply: save your commands and reuse them"
  homepage "https://github.com/jeremynac/panoply"
  url "https://pypi.io/packages/source/p/panoply/panoply-0.1.37.tar.gz"
  sha256 "eec2075a01acaa430999c293e18881537dcd11362b713bb256da2624b192f70f"

  depends_on "python3"

  resource "simple-term-menu" do
    url "https://files.pythonhosted.org/packages/de/08/08c19f7653a9d7c73df024090243a8a44583b613f8f1ed51d79cbb5ae70e/simple-term-menu-1.4.1.tar.gz"
    sha256 "401e7efc6726e195b8e62bfcede51298dc0daf8c5f043a521c8828191b0b012e"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end