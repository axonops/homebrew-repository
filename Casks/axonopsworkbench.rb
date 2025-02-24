cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.5"
  sha256 arm:   "9ec256f5689131fbfb536dc4bd7de806727324c4f900b096da4ce64feb32b598",
         intel: "408591ddecae70e04ecaee54f16ded60928b9c0cfeec19dc80e66ec8e9436047"

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
