cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240910-02"
  sha256 arm:   "9a65ad4e257919fe5aeede5de33664f0dd2bd40fc62ec7fff1864551931d2103",
         intel: "e3da0d99bbb8bd01aef2cd8ec1ffb32fe1865f44cfad2f592027ccb3635d780b"

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
