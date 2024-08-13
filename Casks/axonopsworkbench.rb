cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240813"
  sha256 arm:   "e7a64a06b8189a827f5b72d32fdf33fb79b88981d68b03c7a448d3774d204c79",
         intel: "1f57814232b5478cfbeaa21c8131068b13fe437d5aa275e5941f54dff56efb2c"

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
