cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.2"
  sha256 arm:   "96c6fe5cb09c0aefaa3f499865a0db0a2af49c075419667f5c10dcbc8dd83536",
         intel: "40c809a042728a2334f46fb6c5244afe070eadc6072527faff861d6db095d879"

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
