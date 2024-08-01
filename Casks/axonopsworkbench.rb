cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal-20240801-brew"
  sha256 arm:   "%SHA_ARM%",
         intel: "%SHA_AMD%"

  url "https://github.com/axonops/axonops-workbench-cassandra/releases/download/#{version}/AxonOpsWorkbench-#{version}-mac-#{arch}.zip"
  name "AxonOps Workbench"
  desc "This Cask install the AxonOps Workbench application"
  homepage "https://github.com/axonops/axonops-workbench-cassandra/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AxonOpsWorkbench.app"

  zap trash: "~/Library/Application Scripts/AxonOpsWorkbench"
end

# code: language=ruby
