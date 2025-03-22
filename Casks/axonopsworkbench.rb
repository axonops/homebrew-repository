cask "axonopsworkbench" do
  arch arm: "arm64", intel: "x64"

  version "v0.9.9"
  sha256 arm:   "5db9148dd0713868d2b4bc48aa8ccad1bb278de264374e7fbd10094fd900f453",
         intel: "dc3ed024319d6bab96346cbd589553f15fd5d48fb417095b216b4f4a7739e97c"

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
