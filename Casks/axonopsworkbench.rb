cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.5"
  sha256 arm:   "4339f1f5fbeabeca24fceece81fdb8d4e49b48fb31ee8523bc5da965b7e3c313",
         intel: "ea7bb5ef561cda4c9cd4383924357e4cce59d25e88ba1e8e30469aa8e9932b2c"

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
