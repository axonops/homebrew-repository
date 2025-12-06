cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.8"
  sha256 arm:   "9447eec60a20b6d690aa5022916fa40db6ddca7954c420f4ac749af9a119d471",
         intel: "150c659adc3cca3b8516dbd7851a737d033b650a7d68462cb5bfa62e9b9eafa3"

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
