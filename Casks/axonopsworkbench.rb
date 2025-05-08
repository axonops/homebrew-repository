cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.22"
  sha256 arm:   "dcfc55877699b3c9a866361a44916d1a639ec71016a4ab9a995c1e5202f5bba1",
         intel: "7118ca84ba3e7c417703cbb669b68ed9e362c7c9f9ab4ba6a68054d34275fdae"

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
