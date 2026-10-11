class Cqlai < Formula
  desc "Fast, portable, AI-enhanced interactive terminal for Cassandra CQL"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "18d5ad3d08e72dea5be2ff19cdd2f1f2bac7dd6f9e5569a18127941ba6ab4c46"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v0.4.3"), "./cmd/cqlai/main.go"
  end

  test do
    assert_match "cqlai version", shell_output("#{bin}/cqlai --version")
  end
end
