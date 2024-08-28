cask "axonopsworkbench-internal" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1-internal-20240827"
  sha256 arm:   "74583590c3d71feab8c6718a63f2c0cd347de751606915a5003e6426883f812c",
         intel: "fe86c36ccd2f71c8f1262994467b19d48f68447557754762f1784c2c299914e7"

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
