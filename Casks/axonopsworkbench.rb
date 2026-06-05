cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.1.0"
  sha256 arm:   "aada655dd7070199f977520fc232c7dd77b1d455902baeacc8dd832aab1de0ae",
         intel: "911f89466885c3c6a302cfe7df1cfa509ccbe7989dd2eaae9941d51907f421b2"

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
