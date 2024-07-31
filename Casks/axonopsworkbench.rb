cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x86_64"
  name "AxonOps Workbench"
  desc "AxonOps Workbench"
  homepage "https://axonops.com"
  version "0.1.0-internal-20240729"

  url "https://github.com/axonops/axonops-workbench-cassandra/releases/download/#{version}/AxonOpsWorkbench-#{version}-mac-#{arch}.zip"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AxonOpsWorkbench.app"
  depends_on macos: ">= :big_sur"
  zap trash: [
    "~/Library/Application Scripts/AxonOpsWorkbench"
  ]
end

# code: language=ruby