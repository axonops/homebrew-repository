cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "v0.1.1-internal-20241016-01"
  sha256 arm:   "ad9ceb23ffe67130dcfb6914dc3bceff738c8d955eb4f47d6f1718419746cd8a",
         intel: "ab86d5f19f72e36907a7cc023589caa3a90c829c69536ae8357f52e850df4694"

  url "https://github.com/axonops/axonops-workbench/releases/download/#{version}/AxonOps.Workbench-#{version.sub("v", "")}-mac-#{arch}.zip"
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
