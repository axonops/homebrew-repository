cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.7"
  sha256 arm:   "4c17589b75535c6f8f023c48849889aeaa3235c2994a62250c3166745d680e7c",
         intel: "bce056ad622f52127c0837d13b9ec6426ac23430a56f67e9ee2aefea26e08fc2"

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
