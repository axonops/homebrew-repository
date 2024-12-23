cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.3"
  sha256 arm:   "364688f8ac903598ea038082c7a318fc915910208004bb9204e920b91fae40b1",
         intel: "acbf13a81b4a31334765fdae096977fffa1e7de194e94f7f0e79143939f94424"

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
