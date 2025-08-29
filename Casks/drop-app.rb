cask "drop-app" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "36c8d82be3b9b8b28ac7cac61d55f1fa64877ea909656a0c56cb9eaec71d72c7",
         intel: "11d678e36dfbb2e4a2d0566a30f4b32e10288b70c53e3680e42bd3e1e1267264"

  url "https://github.com/Drop-OSS/drop-app/releases/download/v#{version}/Drop.Desktop.Client_#{version}_#{arch}.dmg",
      verified: "github.com/Drop-OSS/drop-app/"
  name "Drop Desktop Client"
  desc "Desktop companion app for Drop"
  homepage "https://droposs.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Drop Desktop Client.app"
end
