cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.54.0"
  sha256 arm:   "0803852f9075793a54477944aff61e1d841cab569965675167df49ebf3041cf3",
         intel: "7d21b01b4867e1721ab0236822921b4267027a0001d01c68c57cd4bc0b699ecd"

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
