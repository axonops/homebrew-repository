cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-beta-20240909"
  sha256 arm:   "5ffd24f98734e0a111fd07c41200d8a91fe5b696709d2400c8c98090c5bc09d8",
         intel: "27beee1841fd45a05790897d0b70b62e56081882959c2da85a204fe773a7828a"

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
