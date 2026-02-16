class Reed < Formula
  include Language::Python::Virtualenv

  desc "A CLI that reads text aloud using piper-tts"
  homepage "https://github.com/AzisK/Reed"
  url "https://files.pythonhosted.org/packages/source/r/reedy/reedy-0.1.0.tar.gz"
  sha256 "6b987b6839704e95263fb0250721e0437631e642623a4c455b8c560d9d628d37"
  license "Apache-2.0"

  depends_on "python@3.14"

  def install
    venv = virtualenv_create(libexec, "python3.14")
    # Use pip install to resolve all dependencies (including onnxruntime
    # which only provides binary wheels, not sdist tarballs).
    venv.pip_install_and_link buildpath
  end

  test do
    system bin/"reed", "--help"
  end
end
