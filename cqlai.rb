class Cqlai < Formula
  desc "cqlai is a fast, portable, and AI-enhanced interactive terminal for Cassandra (CQL), built in Go"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.0.27.tar.gz"
                        sha256 "e420fa44b94749be62adb2bf1dd62740df3a1a023d0e7968cd585a0e43902031"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64: "84f95370f9ed2cb7846e1b9dee5d5feb8a5991b3515ec77505d77726461329b0"
    sha256 cellar: :any_skip_relocation, amd64: "caaf08b5a2ef0fa197110f9dbebca872f2167b06a85c2c63b0407be5121ecdd5"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v0.0.27 "./cmd/cqlai/main.go"
  end

  test do
    status_output = shell_output("#{bin}/cqlai --version 2>&1", 1)
    assert_match "Cannot run the application", status_output
  end
end
