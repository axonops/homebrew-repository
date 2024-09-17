cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240917-03"
  sha256 arm:   "fe1bfe37626e95ce48d9eda3e88650be74f7be7a72cac8ca3e5ea2d56e40a643",
         intel: "83e4e4898498c45c88191331c201390931c1b2a123803a8740eeb6cceb1211a4"

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
