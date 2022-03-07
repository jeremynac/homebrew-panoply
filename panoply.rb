class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Save your commands and reuse them"
  homepage "https://github.com/jeremynac/panoply"
  url "https://files.pythonhosted.org/packages/86/2c/873e2a3c418f80b5e03a2ff429a675d078e368b9646ffbb0c672755de1f8/panoply-0.1.51.tar.gz"
  sha256 "506d3bea92bc69835dee6b90209b4d31ae14f02428c1b154ce7f0b4549f3e914"

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
