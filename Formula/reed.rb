class Reed < Formula
  include Language::Python::Virtualenv

  desc "A CLI that reads text aloud using piper-tts"
  homepage "https://github.com/AzisK/Reed"
  url "https://files.pythonhosted.org/packages/source/r/reedy/reedy-0.1.0.tar.gz"
  sha256 "6b987b6839704e95263fb0250721e0437631e642623a4c455b8c560d9d628d37"
  license "Apache-2.0"

  depends_on "python"

  resource "piper-tts" do
    url "https://files.pythonhosted.org/packages/source/p/piper-tts/piper_tts-1.2.0.tar.gz"
    sha256 "c4bca02e56e677a7e74db22e76b31a25f3e09e41ee268f560a00043f65611973"
  end

  resource "pathvalidate" do
    url "https://files.pythonhosted.org/packages/source/p/pathvalidate/pathvalidate-3.2.3.tar.gz"
    sha256 "59038d7df3a6fca667d50b0bf291a2a847036097f861731dbbb093c15fbb77ac"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/source/p/prompt_toolkit/prompt_toolkit-3.0.51.tar.gz"
    sha256 "931a162e3b27fc90c86f1b48bb1fb2c528c2761475e57c9c06de13311c7b54ed"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-14.0.0.tar.gz"
    sha256 "82f1bc23a6a21ebca4ae0c45af9bdbc492ed20231dcb63f297d6d1021a9d5725"
  end

  def install
    venv = virtualenv_create(libexec, "python3.14")
    system libexec/"bin/pip", "install", "reedy==#{version}"
    bin.install_symlink Dir[libexec/"bin/reed"]
  end

  test do
    system bin/"reed", "--help"
  end
end
