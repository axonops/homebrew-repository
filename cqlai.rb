class Cqlai < Formula
  desc "Fast, portable, AI-enhanced interactive terminal for Cassandra CQL"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "d79c4437a1d3d6242f24ac43484c7473e9900e0d7d0e48b50a86b8928b08c43a"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v0.2.3"), "./cmd/cqlai/main.go"
  end

  test do
    assert_match "cqlai version", shell_output("#{bin}/cqlai --version")
  end
end
