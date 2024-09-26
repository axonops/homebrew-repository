cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "v0.1.1-internal-20240926-01"
  sha256 arm:   "c419f050fea43264595273e31ad070385bf1de0911ebe3c102af39106589c411",
         intel: "585d7fa03c5a9a52c306e2b093187fcb59cfe5676708845538239425903fe5d2"

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
