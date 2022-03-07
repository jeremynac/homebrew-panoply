class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Save your commands and reuse them"
  homepage "https://github.com/jeremynac/panoply"
  url "https://files.pythonhosted.org/packages/a9/10/f1234e4f60205b83c47abef4910692167e4ae47c1c625024d3bf661d289a/panoply-0.1.48.tar.gz"
  sha256 "82d5a92e43471a9de0d0b1451d7b162f81ed23f39f7b72b181a0bf964713a6d9"

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
