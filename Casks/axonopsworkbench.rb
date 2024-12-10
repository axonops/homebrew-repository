cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.2"
  sha256 arm:   "a9b7c5d2cc36af52b2e941cf13587b40ca3ffcf9765e4eb89b08782b6dc30bc9",
         intel: "ad217383872f1d80f59ace5e66d678085d2fb69d402fe3b2e69d4eedfc7771de"

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
