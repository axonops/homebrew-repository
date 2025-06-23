cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.29"
  sha256 arm:   "a0ef7d666618ab28e55ad3a4cf94be8ed818c25ba5b0ac9d3c7031996d64826d",
         intel: "021885c0c239d1a4dbe3a633379e401ad803af34762b45c3c97092d5ae2f8557"

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
