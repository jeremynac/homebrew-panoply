class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "https://github.com/jeremynac/panoply"
  url "https://files.pythonhosted.org/packages/a3/fe/1529c8c9810ff37dcfa88f0eafed3c03b814fbdc8adc397d27208e578ca0/panoply-0.1.33.tar.gz"
  sha256 "6c1b15fab5d894150f6f460387ec3a08688d49799650235c9b8709519282658d"

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
