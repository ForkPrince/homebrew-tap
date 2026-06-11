cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.56.7"
  sha256 arm:   "4c964216041366329fb0df3252fc353b5a4a01c9ace5e24adefe0fbf6103fc0e",
         intel: "88dc411e8f824322fff56924f416be5853aff5d4c2fe3c054a2a0807e6bb3e86"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v#{version}/xmcl-#{version}-#{arch}.dmg",
      verified: "github.com/Voxelum/x-minecraft-launcher/"
  name "X Minecraft Launcher"
  desc "Open Source Minecraft Launcher with Modern UX"
  homepage "https://xmcl.app/"

  depends_on :macos

  app "X Minecraft Launcher.app"

  zap trash: [
    "~/Library/Application Support/xmcl",
    "~/Library/Preferences/xmcl.plist",
    "~/Library/Saved Application State/xmcl.savedState",
  ]
end
