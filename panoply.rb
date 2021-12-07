class Panoply < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage ""
  url "https://files.pythonhosted.org/packages/5c/07/d5ccc13bd6600cd520f9e6b79b235989931cc272ce58c410f3aacee48298/panoply-0.1.27.tar.gz"
  sha256 "b43196ebbfb8846870b487426c85b49db429c3361c5433b0d48f04e883e24e7b"

  depends_on "python3"

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
