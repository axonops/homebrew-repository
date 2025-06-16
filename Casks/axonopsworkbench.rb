cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.28"
  sha256 arm:   "e87053b207e9627d9c67150ba233a5613662ef9f308a2cfc37994bdc4284d963",
         intel: "15a257a724655a6b11d3581b38c459f58b0c585bc8e3533fe45dc199b96f345c"

  url "https://github.com/axonops/axonops-workbench/releases/download/#{version}/AxonOps.Workbench-#{version.sub('v', '')}-mac-#{arch}.zip"
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
