cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240825"
  sha256 arm:   "4fbc5bb71f9a2300a8e45cf241ff8039430b16783f96c43948f354ac7931d0e2",
         intel: "e54f59b2204df1b58c4422f3e6da0aaf5b5ae92a350c66e34cfd58b2ac4f77d1"

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
