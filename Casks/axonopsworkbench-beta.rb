cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-beta-20240827"
  sha256 arm:   "424c9aa1af23fa5d9e1475fb0ecac18558e173ff93b738ebc52b49b312d46bec",
         intel: "467ff7939e8fbe76afaacf3d991a5796fb50468808cffbf1eae3b6370f59b73b"

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
