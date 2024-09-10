cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240910-03"
  sha256 arm:   "a4fe261a6039eecc2c662f9d60b16c0d6b584ae411262ae07c10674927721434",
         intel: "f41c563e679b07f6d2072294347a1a95d77d9038b9e2fd2918e94fdee4f28e4c"

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
