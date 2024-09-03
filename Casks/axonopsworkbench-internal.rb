cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240903"
  sha256 arm:   "092e7ceb1bebf4a2e4aceab930aa08112540ab9a8457895866e85054cff160d7",
         intel: "b7fcf8802521f6937f06586e01325f80519f4b2974a6f5b710eb2ea975a0f553"

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
