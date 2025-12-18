cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.53.2"
  sha256 arm:   "abc7bc7852f6499c80389fe69f818caa5807d1b7f0876845164f76eb9bdb1416",
         intel: "ac6d4e509670eba5a5273dd2088f151ba78bf0cd084edb589074cdb5c53e114f"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v#{version}/xmcl-#{version}-#{arch}.dmg",
      verified: "github.com/Voxelum/x-minecraft-launcher/"
  name "X Minecraft Launcher"
  desc "Open Source Minecraft Launcher with Modern UX"
  homepage "https://xmcl.app/"

  app "X Minecraft Launcher.app"

  zap trash: [
    "~/Library/Application Support/xmcl",
    "~/Library/Preferences/xmcl.plist",
    "~/Library/Saved Application State/xmcl.savedState",
  ]
end
