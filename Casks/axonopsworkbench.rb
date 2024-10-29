cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.0"
  sha256 arm:   "aaf95585415ba43868b91efdda290000c6ea2585d6d8f3c5d826240f19baa277",
         intel: "0df5c266dfefc112d0ea8bf6cccfa1ec2800ca8cd1184384d1e7895fd44dba0b"

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
