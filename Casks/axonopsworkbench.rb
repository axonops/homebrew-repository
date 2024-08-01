cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal-20240801-brew"
  sha256 arm:   "e58b9ae52ebae7465842bb847d2276c56b22e2c3e73cd27e337128f14ee4d3a1",
         intel: "ffb25b42aab3257145fb0693ebb5318e3c8346b60ea74e351c133ecb2052c41c"

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
