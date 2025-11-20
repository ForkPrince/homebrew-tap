cask "drop-app" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "33bf04b5825733cca348ef5560d4b033837847ee08d7801997cbf960a96fdffe",
         intel: "604d8922229b416f18876a020bef8aa7eb0686bdcfe6ff691fbc5daccc0e7e67"

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
