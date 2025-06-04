cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.27"
  sha256 arm:   "866dd637e31ee8e82f53c03fc5a0615c8899e42d737d2f51322f2837ca60af16",
         intel: "243bfc74edce1fdd6dc992f64dc2d576356b82d242a00854aedfe595d8782002"

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
