cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.0"
  sha256 arm:   "4c3e334bfd68842fcbbb799a6bec36f58733f20887db7755f73b1b068dbcd1be",
         intel: "b55c568267c1c9490e1806e04ff956ab384bd846dd2bafa2077bdfa8c9cd0e92"

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
