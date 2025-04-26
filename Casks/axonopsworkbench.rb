cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.15"
  sha256 arm:   "75d6c10121907450133f02eac518969acd3251a5f539a9007829b874b330bfce",
         intel: "72363a721a66fd56c05b23c3573fc7f51bd28d41c46dca1f6fb40232dfa5ec47"

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
