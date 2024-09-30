cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.0-beta3"
  sha256 arm:   "11dc608e909c02ff2ba7bf09342006f03deec5ed1b3311c3118d048d28f472f7",
         intel: "0bd893dc4ee039cc8f7c4408ee814fdeb6523be1950aea920cb3ffcff3192c48"

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
