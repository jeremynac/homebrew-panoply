class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Panoply: save your commands and reuse them"
  homepage "https://github.com/jeremynac/panoply"
  url "https://files.pythonhosted.org/packages/86/d2/26c1483d1373a3a821ef1943a610259aff28d2f40a55321a80b135bb0672/panoply-0.1.36.tar.gz"
  sha256 "161cd07c41b9983b7d13a92f4370c7fb1c68efaac09521105fd0983bd6fa4e72"

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
