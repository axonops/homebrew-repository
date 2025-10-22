cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.3"
  sha256 arm:   "5c26f6684bbbbf25cdee644da881c9682c95816ef0b6380056cdf96df55e4eca",
         intel: "f8eb12e1018ba0501b42b61356fd50813a9a4061c4b09b641e2bb2ba603f2ca9"

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
