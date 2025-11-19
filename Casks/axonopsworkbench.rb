cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.6"
  sha256 arm:   "77ddeedd2b80144456ae3c63e68105762a78a5821d50618313d920102ec3e77b",
         intel: "13ca43cf23b3ca755749082de2337cfa87798b872b1cd3a6243f11c082772d93"

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
