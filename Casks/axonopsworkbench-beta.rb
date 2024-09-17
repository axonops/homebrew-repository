cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-beta-20240917-01"
  sha256 arm:   "a4b60a42dcc57bd00bee9cc83d3abf62ecdc6c25e3e296c6d81b0a8efd2f5558",
         intel: "5f9530d01a2816ce10dbf3634eb6f9a9f1d4d263e99cb7e7856a5c3a667fea66"

  url "https://github.com/axonops/axonops-workbench-cassandra/releases/download/#{version}/AxonOps.Workbench-#{version}-mac-#{arch}.zip"
  name "AxonOps Workbench"
  desc "This Cask install the AxonOps Workbench application"
  homepage "https://github.com/axonops/axonops-workbench-cassandra/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AxonOps Workbench.app"

  zap trash: "~/Library/Application Scripts/AxonOps Workbench"
end

# code: language=ruby
