cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.1"
  sha256 arm:   "b55c0e68b5d7d5c234f3d482d4ac7bfa468ba61e10e35dd1c8adaf73b0d1ee8d",
         intel: "ac10d565d417255641f941b7511428a586f7a9ba14d8bc22c1d543704028107b"

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
