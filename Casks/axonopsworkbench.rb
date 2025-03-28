cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.10"
  sha256 arm:   "b990f2e4e00d5c8d2ac20bc8a2719c9b65a9c5744dd8cd4f5dcce6dd76f2b130",
         intel: "5cdcfa5d1ae25ff4d7847e9b0d0f9cb20e38488cce0ee461311d34f1853f9dea"

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
