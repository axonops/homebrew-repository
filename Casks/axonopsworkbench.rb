cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.33"
  sha256 arm:   "6b4ff54cbc9aeed43db14c4e0b4ba70fe1f618e388662a3046b11f767451a1a9",
         intel: "dc6ed237516da6bbaa6a1fb28062a81e535db859742d679a72e3654ea91ac297"

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
