cask "beeper@nightly" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.1.181"
  sha256 arm:   "731d07c2543a29906bf3d975d20ece339f29b3c5cf23a938abc8022dfd3fae3b",
         intel: "dfffcfabade5c7ff46dc362ffcccda401ec752968029c58e853be6362e71413b"

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
  depends_on macos: ">= :big_sur"

  app "Beeper Nightly.app"

  zap trash: [
    "~/Library/Application Support/BeeperTexts",
    "~/Library/Caches/com.automattic.beeper.desktop",
    "~/Library/Caches/com.automattic.beeper.desktop.ShipIt",
    "~/Library/Preferences/com.automattic.beeper.desktop.plist",
    "~/Library/Saved Application State/com.automattic.beeper.desktop.savedState",
  ]
end
