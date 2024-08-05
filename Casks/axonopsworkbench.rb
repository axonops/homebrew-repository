cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal-20240805"
  sha256 arm:   "5bd8de472681c5b09a831a5955ab8be411f99528a49ac84af8523067a6b6bbf0",
         intel: "2a67c10817c9bfac79493e27f0413c1e9d08170e5f79330837b332625fd8e9da"

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
