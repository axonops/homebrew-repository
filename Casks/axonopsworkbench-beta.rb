cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.0-beta6"
  sha256 arm:   "ca6d96efdd3c19425922fd3f623d4442f1e32961bd5f13daa93f22e75cdc7e24",
         intel: "3dee835fea51a579a5f8fa5434d608020902b66d43a8d4a4ab6773a43f96537e"

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
