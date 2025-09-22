cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.52.1"
  sha256 arm:   "be9ab0661139d909266104aa2cdc48df655f8556179ce88726f03d2d58badd8a",
         intel: "2b4fd6948403c91df8b5b28035eed104ef1f59150173660ded1db0201c9397b6"

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
