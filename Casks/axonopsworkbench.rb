cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.6"
  sha256 arm:   "c6b47ff623e65ec838f5e3bfead8907d0ff9bbd44c6f77b04851c32c598b2b11",
         intel: "6c9390d279d1e17e3c281c99a62e2716e1cfb1e0038c6bf0cbcbd41b8296daff"

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
