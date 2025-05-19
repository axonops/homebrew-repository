cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.23"
  sha256 arm:   "03a400d23253d86e73e7f63472487b80dbbef031f6fb71446488a02b3439d909",
         intel: "9d4cb8a49df030fe5ef89c0025a22066e9c259eca189fc6b873b0092acf2f36f"

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
