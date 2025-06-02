cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.26"
  sha256 arm:   "7fa37dad3cae9c5b908ade59af0578c82d2db99ef2f20d6fbfec78f713378fec",
         intel: "eed4af34e88657c1cfc540dd8923331e870d8bae0229ff5e580a4debf55f4df6"

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
