cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.58.0"
  sha256 arm:   "9ebaccda60eda42ce9d0aafa7311d600099ba34ec6ffa67c8b0f4fc8ae529004",
         intel: "62f60328d0bcc0e0031f27b00cc0b1698d56871a13a3d4a6c0cbf14d914981cc"

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
