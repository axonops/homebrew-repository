cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.2.3"
  sha256 arm:   "c5949a8c6780d64341c4eae40c45b7a7166e58e4975350342b7aa1f25968a0f0",
         intel: "4897664ec6683ed81401ab7f6ae28a2c799025cf5c7c4a21e2a6c713c1c1dff8"

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
