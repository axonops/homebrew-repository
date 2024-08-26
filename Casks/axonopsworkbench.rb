cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240826"
  sha256 arm:   "632aa2366e2a8a843e05f6d7d17c69e157c15b7a918e88435940d68d56a63012",
         intel: "7d4265485b94622b3bd0353ad46a603d0b6b416097422779750e803caaceadaf"

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
