cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.30"
  sha256 arm:   "cb89a3e7564446c41833c0e547f94fcb8a54d046af620599399badfaacf2f5a3",
         intel: "10c86ca4373dd545418f1dccc70f8dcdfd196fce1b3dc246843eee96f19528b4"

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
