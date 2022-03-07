class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Save your commands and reuse them"
  homepage "https://github.com/jeremynac/panoply"
  url "https://files.pythonhosted.org/packages/2c/59/c7b219cd9c71db2b1a638e168b6f735441121acfdaf0eba40550bb147750/panoply-0.1.53.tar.gz"
  sha256 "d0d70544e58898ae6c51c853b4b8716fe5fed3254943bf17b6bdca0adbd1013d"

  depends_on "python3"

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
