cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.19"
  sha256 arm:   "7fa09e5b1a2ef35bacbbadb90a732db4f36ade1d0658ff30b01047d191d46a4b",
         intel: "c6f6340bc7ba00843e837cb14545861e86e2f54a5609ebfccf854f35117e87c7"

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
