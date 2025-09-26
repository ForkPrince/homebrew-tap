cask "beeper@nightly" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.1.237"
  sha256 arm:   "7be57b0a760228228ca622dbdf73204b5b3e887a35350af12a7641d45f7fea62",
         intel: "430ec8c7c7316938778b54480f668f67754c40acdf768ee8ba15b678ec342ecb"

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
