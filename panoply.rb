class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage ""
  url "https://files.pythonhosted.org/packages/21/54/b6b5f8a5afa723859567f0598c422dcf5dde68a51e91219f07210fb58011/panoply-0.1.32.tar.gz"
  sha256 "6a3c456dbe2634112b062aed912d233857cf7a1bb65bfb2c87094c1e58537c51"

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
