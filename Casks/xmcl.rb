cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.59.1"
  sha256 arm:   "608fff20d35efcdbc2865898fbe6801ee973ab61c3c0c01561fbe14bfe277940",
         intel: "2f8d54bceceefb3e6648e6ee11f9bb14706fc84f0e694e9c1c6ff86ea20e4e00"

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
