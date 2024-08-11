cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240811"
  sha256 arm:   "6145f1b54aefaeda469013b9fc0f90ca11a34b83d54b51b692378d37d504ef7e",
         intel: "c2a6853db455b5a157655233e3998e55a784f085e5936dda1fd010af8c4559d7"

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
