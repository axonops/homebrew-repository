cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.21"
  sha256 arm:   "33bcb3d364b27912f9c7fb7acb41dbf81a22764ed40542185991f154b651dc65",
         intel: "748ec0949f91515678cb0d696dc47baba9858b678c240f1473ae9a60f7db11f9"

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
