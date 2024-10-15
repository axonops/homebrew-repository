cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "v0.1.1-internal-20241014-01"
  sha256 arm:   "372d62ba9b1f493838fb58bec01142f5960eded18ad4b14d573c209ffc503ebc",
         intel: "f94927cab3627dee63315af83fe0be252b5c95fd5b51705cffce8561384c34d2"

  url "https://github.com/axonops/axonops-workbench/releases/download/#{version}/AxonOps.Workbench-#{version}-mac-#{arch}.zip"
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
