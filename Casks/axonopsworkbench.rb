cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.14"
  sha256 arm:   "28cf0d01cfb84338472fc2faaea8d1da67457369dedf2a07a1bd048d4f8a2579",
         intel: "cdf6a19503daff0b47e4af4f56697510a9145a2a67897ef923ac208024e4afe1"

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
