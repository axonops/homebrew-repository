cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-beta-20240905"
  sha256 arm:   "2664746ee410a9a1c8df6f6e9e7acc974cd2e991e055ef26957a155ca474be79",
         intel: "fe93ef0a1d4f38b63e714b8167a3f3f5d1e5e0cf7918f0ed8fde62c38b711728"

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
