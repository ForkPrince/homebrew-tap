cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.53.3"
  sha256 arm:   "d5359f18b8144f51a490e85fbc22b81aee069ff67ba51415c24a3ba9372cd2f9",
         intel: "b5578e804070864092884d130ca3c340677265be011f5c518a81d6305c4dfe3c"

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
