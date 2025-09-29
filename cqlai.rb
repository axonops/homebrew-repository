class Cqlai < Formula
  desc "cqlai is a fast, portable, and AI-enhanced interactive terminal for Cassandra (CQL), built in Go"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.0.12.tar.gz"
      sha256 "41aaef99544e915d6f20c988d3d3183382779d4f2693dcab1178f18807e34cae"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64: "1b1bf0924f032ceee44d9a63889e8eb0ec4e34609ff840aadcbb583e68715260"
    sha256 cellar: :any_skip_relocation, amd64: "5c03a5326070cba0f1a3018eb7955d4f46ad6d7bc84144c81507d684d2516dc9"
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
