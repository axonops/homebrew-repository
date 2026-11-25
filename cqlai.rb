class Cqlai < Formula
  desc "Fast, portable, AI-enhanced interactive terminal for Cassandra CQL"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.4.5.tar.gz"
  sha256 "fca8052486ceac042e31fb4de17a8f2bd9381c92cafe04ef9d5c74532f182e28"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v0.4.5"), "./cmd/cqlai/main.go"
  end

  test do
    assert_match "cqlai version", shell_output("#{bin}/cqlai --version")
  end
end
