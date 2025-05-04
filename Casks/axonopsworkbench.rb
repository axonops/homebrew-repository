cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.20"
  sha256 arm:   "79eb7ceeff46999c5b313c21bed430d1aebcf8ae479efd8cb8e7be184479a5e7",
         intel: "54f91e71c905a36dc63f429bcd00c82afe3238e28b408aa8cf3b64e0cd3557de"

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
