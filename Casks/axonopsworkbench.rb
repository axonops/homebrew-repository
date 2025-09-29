cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.1"
  sha256 arm:   "c6600d011c065d44eb63510185cf4f1f37f079027bbc999832c36cbd530b1a49",
         intel: "26a4db42a9c2434d15163595a29cd303a32642ad7196652a34955a526beee6fa"

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
