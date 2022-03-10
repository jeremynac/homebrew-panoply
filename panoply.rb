class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Save your commands and reuse them"
  homepage "https://github.com/jeremynac/panoply"
  url "https://files.pythonhosted.org/packages/d6/59/d84912e4f714649a0690660066115162c6b6f52db2c83b323255332693a9/panoply-0.1.56.tar.gz"
  sha256 "f638095c7227a4bf560bc872c7cffff3a2db46765c88ec43c544ca13cf24ac95"

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
    assert_match "\nThere are no commands saved yet\n\n\
    usage: panoply [-h] [-a] [-r]\n\
    \n\
    Save your commands and reuse them\
    \n\
    optional arguments:\n\
      -h, --help    show this help message and exit\n\
      -a, --add     add a command\n\
      -r, --remove  remove a command\n", shell_output(bin/"panoply")
  end
end
