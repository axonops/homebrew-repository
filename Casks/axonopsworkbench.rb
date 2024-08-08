cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal-20240808"
  sha256 arm:   "441d7815cace268d20b7a163fab8da51a7e1477d09234b1ec2b8ae0f6a611a76",
         intel: "0d11293ba33c94c35253ae11e3ebaee88e77fb1f7da3ee4f548194151972241a"

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
