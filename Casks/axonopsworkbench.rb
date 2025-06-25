cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.31"
  sha256 arm:   "8259587bc2800004bf73872e60bebb04c08d29ccd5a0f3691f0bde7f885c9dfe",
         intel: "373b183260e8cb285d9b9b0f28a26a07335e6067987a2463fbcb13dfb5469437"

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
