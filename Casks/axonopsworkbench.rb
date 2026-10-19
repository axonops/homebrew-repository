cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.1.3"
  sha256 arm:   "a84c51d4fd1c29ae86e3198793c0dae32d642b3b503c5164ef8650d75b9b2585",
         intel: "61c62225d2e307bad0a877fbd9575756a0397e5c50e556c9aad56b830d2eac1c"

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
