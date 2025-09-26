class Cqlai < Formula
  desc "cqlai is a fast, portable, and AI-enhanced interactive terminal for Cassandra (CQL), built in Go"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "742e4575b072729f096771c5ee7c8f9defd894df3562697b60eeb3e8ba75b3e7"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64: "bf02872a1ab780dde9e4cbdd44363245709cc658a2281a7c8df9d3ce283c315d"
    sha256 cellar: :any_skip_relocation, amd64: "996cdb2571d11b6a36870d98a1a1f1563f15b861193285c040da0d39669e6637"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "cmd/cqlai/main.go"
  end

  test do
    status_output = shell_output("#{bin}/cqlai --version 2>&1", 1)
    assert_match "Cannot run the application", status_output
  end
end
