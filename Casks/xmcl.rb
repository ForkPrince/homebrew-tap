cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.52.3"
  sha256 arm:   "10e1906e9581be7fa0c9bf943aaaacd03ff8c6c8bdcd3301e7b232947627e61a",
         intel: "ea219416cee3b6e9f23047c2b3e9379fa5e68b98f519a9569c5d8009e9eab123"

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
