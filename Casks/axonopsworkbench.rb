cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.7"
  sha256 arm:   "1f27bf908bf87e337561c318b7ec72895a0adddba1727fb5e7e8799441784469",
         intel: "d73231e3518206618c97a687b4c5a3050c10a25b6783c91ccc121f9ddc12f9e8"

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
