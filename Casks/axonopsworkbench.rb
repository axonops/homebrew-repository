cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.4"
  sha256 arm:   "23f8e7c0171e04a4d5facbe5e5edff28c32f371ecc37aefa5dfa9513da15e576",
         intel: "7897f4da321a4df1c43ec13feef77432b8e7b19fa1fbba7f16c0215428846b06"

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
