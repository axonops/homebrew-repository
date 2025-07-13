cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.32"
  sha256 arm:   "f52316c5a7426a8fb4e54e26b3aef9e0e71612a907754085587b1621b5c01c6e",
         intel: "6cb32e0900b121807ff7688429da1e504c4f01bbf5613d361412e6dc8f6a54ce"

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
