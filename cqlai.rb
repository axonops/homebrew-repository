class Cqlai < Formula
  desc "Fast, portable, AI-enhanced interactive terminal for Cassandra CQL"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "8a062d334fec343ab4664cb8b7ea4eb5c5201a8d560a81a0aedd6e46146ae707"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v0.3.5"), "./cmd/cqlai/main.go"
  end

  test do
    assert_match "cqlai version", shell_output("#{bin}/cqlai --version")
  end
end
