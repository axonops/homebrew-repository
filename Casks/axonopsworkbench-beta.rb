cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.0-beta5"
  sha256 arm:   "e60b0dbf00901b96d4853bfa92986d2d8866e0f42ba0b9e1af7571b7357c1059",
         intel: "c4a8c76b1eecb6c31e778941c2e150b52ace41fdd5a6f0359daa9af577cbc427"

  url "https://github.com/axonops/axonops-workbench/releases/download/#{version}/AxonOps.Workbench-#{version}-mac-#{arch}.zip"
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
