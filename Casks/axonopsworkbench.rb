cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.1.0"
  sha256 arm:   "79d5f850a185ac17aee24731467e195effd3a6f5efedd0be1b789a8362668f22",
         intel: "0ff1929515f1a688db5f3f9326586afdff9cd2573ca412e28f82394bc4b7cafa"

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
