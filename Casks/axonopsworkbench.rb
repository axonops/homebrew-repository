cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.2.6"
  sha256 arm:   "5f93712349f82b7e3ea0ade48d600a55b769ab5a9b529df7e769a2d64c45706d",
         intel: "bf1e879d452d408271acda71f60bf70fa87ce932671d13cf8f99f12a96c90588"

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
