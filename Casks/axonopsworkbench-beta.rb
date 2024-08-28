cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-beta-20240828"
  sha256 arm:   "ba967b45476fbe40da1ed477577d55276031e2588b87fbaf1258829c6bf8796f",
         intel: "1911d9e15ccb05826a51d843cf9d1c70fe2cbd747593bae53fcbce5f788f351d"

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
