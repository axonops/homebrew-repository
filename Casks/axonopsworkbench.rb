cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.13"
  sha256 arm:   "f94528019277150c8262b8e60c9984933ffb4cc6a4f36f6af253c4e21c891d07",
         intel: "a377c1374dd27c0be218d9fde436c347f624cc56e1a078302961ed0878556281"

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
