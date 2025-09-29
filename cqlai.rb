class Cqlai < Formula
  desc "cqlai is a fast, portable, and AI-enhanced interactive terminal for Cassandra (CQL), built in Go"
  homepage "https://github.com/axonops/cqlai"
  url "https://github.com/axonops/cqlai/archive/refs/tags/v0.0.13.tar.gz"
        sha256 "1b25b22532bd5203a4a16576ebeb2e9f783e5c776a177747d5ffd53c6257b441"
  license "Apache-2.0"
  head "https://github.com/axonops/cqlai.git", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64: "930c35c0836764d05348d895ae6b4ac38fb838dd9a5d330ec56eef4361e8a7f4"
    sha256 cellar: :any_skip_relocation, amd64: "1bc70ab6e0199557ef3e4699ea5379f5fa51fc06d7fe8ac2d29a87dd6ffde410"
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
