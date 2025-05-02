cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.18"
  sha256 arm:   "01a2707f8defed2328b7052e6ec3ebc6fd87b8dacc020500e781022d56dcdc97",
         intel: "ea8873828ac47530f40af399f0aee1b934b2b636b87d257356dfcba0c449139d"

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
