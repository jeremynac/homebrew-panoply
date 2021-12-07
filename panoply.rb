# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Panoply < Formula
  include Language::Python::Virtualenv

  desc "This panoply, an easy way to keep your commands"
  homepage "https://github.com/jeremynac/panoply"
  url "https://github.com/jeremynac/panoply/archive/refs/tags/0.1.13.tar.gz"
  sha256 "cb854e2f4718e110273cd372e8d66c32606af116d1fec145009d210955481e8f"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test panoply`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
