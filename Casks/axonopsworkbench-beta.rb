cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.0-beta4"
  sha256 arm:   "06f920fd14a485093bb8bd1730e05f4cebc1197fa195fecfce699b2271b72947",
         intel: "59ac67b2551ad50494271e22bc6339882175f0e396b35f091de3623f97e2ceca"

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
