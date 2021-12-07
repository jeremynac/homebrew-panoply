class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Save your commands and reuse them"
  homepage "https://github.com/jeremynac/panoply"
  url "https://files.pythonhosted.org/packages/46/c1/3ba24d74f06583246ab3da59522f8e47d81f948a1333d35dc66e7a642b17/panoply-0.1.42.tar.gz"
  sha256 "5bb190c669c9a5110bc58302940bd973595387149dd781b3c8e938721fa175e9"

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

