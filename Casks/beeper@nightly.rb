cask "beeper@nightly" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.2.236"
  sha256 arm:   "62e3c7849b918d209357e557f443d29bcbce88548a03b7c52a07341b03334b5b",
         intel: "e3c387938a026616eccf3f6a18b02c7cde61d678b4cf1e3b0058b57443a1b4cc"

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
  conflicts_with cask: ["beeper"]
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
