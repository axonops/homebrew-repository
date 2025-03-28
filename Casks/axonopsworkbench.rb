cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.8"
  sha256 arm:   "866d98d81e790dd8b4d8f2c41e3890a8b78f2e3c1c3c83db0a968ffa72428674",
         intel: "d5646615b75eb7f5c59aae26549290d1e93a0c554dfa779e5a1f9fe4a74ace23"

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
