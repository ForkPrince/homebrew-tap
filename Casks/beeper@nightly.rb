cask "beeper@nightly" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.2.733"
  sha256 arm:   "80a24945f610fe913217e7ec30c1cc2dd72a9a53c45a9f270f450b7641453f94",
         intel: "7592eb274702d9a5023a5ede40a19f7cd4e8a3f49559963797e79e28ef0f3994"

  url "https://beeper-desktop.download.beeper.com/builds/Beeper%20Nightly-#{version}#{arch}-mac.zip"
  name "Beeper"
  desc "Universal chat app powered by Matrix"
  homepage "https://www.beeper.com/"

  livecheck do
    url "https://api.beeper.com/desktop/update-feed.json?bundleID=com.automattic.beeper.desktop&platform=macos&arch=#{livecheck_arch}&channel=nightly"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: "beeper"
  depends_on macos: ">= :monterey"

  app "Beeper Nightly.app"

  zap trash: [
    "~/Library/Application Support/BeeperTexts",
    "~/Library/Caches/com.automattic.beeper.desktop",
    "~/Library/Caches/com.automattic.beeper.desktop.ShipIt",
    "~/Library/Preferences/com.automattic.beeper.desktop.plist",
    "~/Library/Saved Application State/com.automattic.beeper.desktop.savedState",
  ]
end
