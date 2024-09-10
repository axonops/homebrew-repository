cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-beta-20240910-01"
  sha256 arm:   "6c976d29a9fdfa122886dea13553655ca10629d04ec1eda10dfe3f7aca68c98b",
         intel: "597b1c151b98ea04ca60f084acb488a3e7cb3341cc49195c4a8564443ae07634"

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
