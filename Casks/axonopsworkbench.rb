cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.34"
  sha256 arm:   "dcac5ff58fc80b4166a6e5e5b8bf531913b4631516b039dc1cc8eceddf223092",
         intel: "a89da9ba201d3030f87713b17d695eac7c5a9b48ecd180dcbbfa0d80d928daf9"

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
