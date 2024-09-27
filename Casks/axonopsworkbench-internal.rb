cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "v0.1.1-internal-20240927-01"
  sha256 arm:   "6c144e2d61adcb357cd5491fe9270c89b8a09e2af0d91a73fbf40f543542f765",
         intel: "a0f570c70261ecbd0d2eed1efcd1b684f933433ef12b5fdb40c88d612313992c"

  url "https://github.com/axonops/axonops-workbench-cassandra/releases/download/#{version}/AxonOps.Workbench-#{version}-mac-#{arch}.zip"
  name "AxonOps Workbench"
  desc "This Cask install the AxonOps Workbench application"
  homepage "https://github.com/axonops/axonops-workbench-cassandra/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AxonOps Workbench.app"

  zap trash: "~/Library/Application Scripts/AxonOps Workbench"
end

# code: language=ruby
