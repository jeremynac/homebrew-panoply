class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Save your commands and reuse them"
  homepage "https://github.com/jeremynac/panoply"
  url "https://files.pythonhosted.org/packages/9b/62/513eb3c792b79f3c8a322719d65b27a18d94cf520e4894f081bf9f1a0e84/panoply-0.1.50.tar.gz"
  sha256 "d0e01d9b3f613513b4137b904b2d0fc7f1acfc4d986b2e9b30ce9252183a879a"

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
