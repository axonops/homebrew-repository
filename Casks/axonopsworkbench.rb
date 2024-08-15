cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240815"
  sha256 arm:   "aae45e550c648d9c60569a3d2badac8a6943f06f71826a1ade1db2369f552d5f",
         intel: "c8bda417bc21b626b3adb951056a813d204ec2d333a409b8262b2be4c3f29253"

  url "https://github.com/axonops/axonops-workbench-cassandra/releases/download/#{version}/AxonOps.Workbench-#{version}-mac-#{arch}.zip"
  name "AxonOps Workbench"
  desc "This Cask install the AxonOps Workbench application"
  homepage "https://github.com/axonops/axonops-workbench-cassandra/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AxonOps Workbench.app"

  zap trash: "~/Library/Application Scripts/AxonOps Workbench"
end

# code: language=ruby
