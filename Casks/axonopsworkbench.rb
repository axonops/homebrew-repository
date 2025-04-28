cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.17"
  sha256 arm:   "1e91913501406aa17118b55828de7f069d8fa270d77d2dded12df58b60e8da5d",
         intel: "96b0a90e61d462a998256feaa12ee8cc668925bc493434ef34796edcec46cffb"

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
