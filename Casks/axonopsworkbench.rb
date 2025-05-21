cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.24"
  sha256 arm:   "e0c2de34df29a7335fe660a311fab0f6288590a9c22462b094b10af1f875e207",
         intel: "f316084a529e5e65cf11380543828d5866e6e17b60c5629ef12a533a9908bdf2"

  url "https://github.com/axonops/axonops-workbench/releases/download/#{version}/AxonOps.Workbench-#{version.sub('v', '')}-mac-#{arch}.zip"
  name "AxonOps Workbench"
  desc "This Cask install the AxonOps Workbench application"
  homepage "https://github.com/axonops/axonops-workbench/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AxonOps Workbench.app"

  zap trash: "~/Library/Application Scripts/AxonOps Workbench"
end

# code: language=ruby
