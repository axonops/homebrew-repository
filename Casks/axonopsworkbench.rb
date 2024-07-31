cask "axonopsworkbench" do
  name "AxonOps Workbench"
  desc "AxonOps Workbench"
  homepage "https://github.com/axonops/axonops-workbench-cassandra"
  version "0.1.0-internal-20240729"
  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "03d3dfaa20e9ec24561803e45211ac7bbefe9f839b0f45b40ce52ac8c0326b0e",
         intel: "b622c4279829f6e4f812c5a1aa9991dd12beeb55887aafecd934951bbee74f97"

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