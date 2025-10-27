cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.4"
  sha256 arm:   "f85292e142ac192729b8f2cf52c3a876b0963dbec5a278b9dd676ff935b51219",
         intel: "717920d96f1838dd7033ebda3ec7ea8a3781c1a6794a926f91c535dee1dd3e26"

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
