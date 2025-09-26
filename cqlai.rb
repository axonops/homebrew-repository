class Cqlai < Formula
  desc "cqlai is a fast, portable, and AI-enhanced interactive terminal for Cassandra (CQL), built in Go"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.0.11.tar.gz"
    sha256 "bb01e7ba5c14726f750a300e5cd9f860fa2f4bfdf7e0a80713a871b355cdfc74"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64: "9e58786a18425e88211a8b9d5e7643d4f11e48cf30ab0d61aef5e41accb5565a"
    sha256 cellar: :any_skip_relocation, amd64: "0e5a7bd18fefa7e9fc3bba299b061fedf5a8e59f28723e5d712b69b947c2dc63"
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
