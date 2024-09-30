cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "v0.1.1-internal-20240930-01"
  sha256 arm:   "df806114db6af12a27131d7b16dd3ba26ee6e8bfa2e8515adda8263fa5fc5b87",
         intel: "8fa34d0b140b4b200aade0fff27f684c017eac4cfdd76b99380f41262bff7758"

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
