cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.2.4"
  sha256 arm:   "bbae1f7e4e29023c96cb874635d1b1b5ec385e98f71e15a846f3c9561a7d8182",
         intel: "dca86d4d6d342aff8ec92634ea43acfb84a42987f443e4090dc3135427d5ab90"

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
