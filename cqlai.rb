class Cqlai < Formula
  desc "Fast, portable, AI-enhanced interactive terminal for Cassandra CQL"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "dcd89aa235e56b51d85ea2dac708d044c3c432bb6cf288679d15ced909bcbcbe"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v0.4.0"), "./cmd/cqlai/main.go"
  end

  test do
    assert_match "cqlai version", shell_output("#{bin}/cqlai --version")
  end
end
