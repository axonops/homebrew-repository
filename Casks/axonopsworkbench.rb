cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.2.0"
  sha256 arm:   "2c15f3980575af1e6163863cfe8f19a60871b9a75d96e39ebccef53361bb6026",
         intel: "ddc6bdec753cd0ccd6fa284a2f3250267eb390e021d8825b88a898bdd37db2bb"

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
