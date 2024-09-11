cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-beta-20240911-01"
  sha256 arm:   "f7d63a24628615ffa2c1ec71cb51213e5358685dbf239a15ebab194255dc140b",
         intel: "1248c3129b385ed488db25ccad12492d0ebe843e1c793cf114a220b3913cfc08"

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
