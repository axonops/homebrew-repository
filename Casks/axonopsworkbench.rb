cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.37"
  sha256 arm:   "d80d4105bc51d7cc5903b538654f4abd9493d36b0efed9a8ee071ed6a38a230e",
         intel: "afe9f521f4c9a376531baba9c07ab16a9242a5104d390869f0e386fd961185d6"

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
