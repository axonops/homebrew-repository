cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.2.1"
  sha256 arm:   "eab56fd19d2a1f09800e6a7a152e371bfeec7522a354f37ea8b44bc04e68fa80",
         intel: "3bc1fe9ab0279e0cbd676b637ba2e05fac11c0dbca9c2bc344095e8d7376a0d2"

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
