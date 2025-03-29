cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.11"
  sha256 arm:   "45c196dc5e5de91fd2d47e001b2322bd31dcf3b8772aee3debe9f64746e1db38",
         intel: "168d5081f75c80932d99a046847414ab45a8fc35f4d21894305ff26e30472ed8"

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
