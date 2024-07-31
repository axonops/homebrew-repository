cask "axonopsworkbench" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0-internal-20240729"
  sha256 arm:   "03d3dfaa20e9ec24561803e45211ac7bbefe9f839b0f45b40ce52ac8c0326b0e",
         intel: "b622c4279829f6e4f812c5a1aa9991dd12beeb55887aafecd934951bbee74f97"

  url "https://github.com/axonops/axonops-workbench-cassandra/releases/download/#{version}/AxonOpsWorkbench-#{version}-mac-#{arch}.zip"
  name "AxonOps Workbench"
  desc "This Cask install the AxonOps Workbench application"
  homepage "https://axonops.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AxonOpsWorkbench.app"

  zap trash: "~/Library/Application Scripts/AxonOpsWorkbench"
end

# code: language=ruby
