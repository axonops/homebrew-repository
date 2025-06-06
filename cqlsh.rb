# typed: strict
# frozen_string_literal: true

# This class compiles and installs the CQLSH
class Cqlsh < Formula
  include Language::Python::Virtualenv

  desc "Repackages the official Cassandra for lighter-weight installs"
  homepage "https://github.com/axonops/cqlsh"
  url "https://github.com/axonops/axonops-cqlsh-binary.git", tag: "v0.0.1", using: :git, revision: "5e34f803613e4ba6934606b7db88f6605c1750e0"
  # head "git@bitbucket.org:digitalisio/axonops-cqlsh-binary.git", branch: "improvements", using: :git
  license "Apache-2.0"

  depends_on "make" => :build
  depends_on "libev"
  depends_on "python@3.11"

  resource "cython" do
    url "https://files.pythonhosted.org/packages/d5/f7/2fdd9205a2eedee7d9b0abbf15944a1151eb943001dbdc5233b1d1cfc34e/Cython-3.0.10.tar.gz"
    sha256 "dcc96739331fb854dcf503f94607576cfe8488066c61ca50dfd55836f132de99"
  end

  def install
    # virtualenv_install_with_resources without: "setuptools"
    python = "python3.11"
    ENV.prepend_path "PYTHONPATH", Formula["cython"].opt_libexec/Language::Python.site_packages(python)
    venv = virtualenv_create(libexec, python)
    venv.pip_install resource("cython")

    ENV.prepend_path "PATH", "#{libexec}/bin"
    ENV.prepend_path "PYTHONPATH", "./build"
    h = ENV.fetch("HOMEBREW_PREFIX", nil)
    system "./configure", "--prefix=#{prefix}", "--with-libev=#{h}", "--with-gettext=#{h}", *std_configure_args
    system "make"
    system "make", "install"
  end

  test do
    assert_match "usage: Usage: cqlsh.*", shell_output("#{bin}/axonos-cqlsh --help 2>&1", 2)
  end
end
