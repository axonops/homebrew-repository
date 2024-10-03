cask "axonopsworkbench-beta" do
  arch arm: "arm64", intel: "x64"

  version "v1.0.0-beta7"
  sha256 arm:   "f09198d22fd9f41e42b107d1fa208257358a1e269c3c6a295f4084217b505ff7",
         intel: "7aa9a1b6d4cef1772825bb9027238c5ea36f3dc5dee1a5f9ddbacf00e2a32a83"

  url "https://github.com/axonops/axonops-workbench/releases/download/#{version}/AxonOps.Workbench-#{version}-mac-#{arch}.zip"
  name "AxonOps Workbench"
  desc "This Cask install the AxonOps Workbench application"
  homepage "https://github.com/axonops/axonops-workbench/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AxonOps Workbench.app"

  zap trash: "~/Library/Application Scripts/AxonOps Workbench"
end

# code: language=ruby
