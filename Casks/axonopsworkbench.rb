cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.25"
  sha256 arm:   "6e376aa29b0ad3939b1256f8295c250b541c7a0109e722e130e9d493070efaf8",
         intel: "8787364f95c4d9027c3800ffd028b91a37bf212c8ea10f069e4eb1cfa7e94df0"

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
