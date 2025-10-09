cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.52.6"
  sha256 arm:   "fa3cf20a104b54ee53fbde5c2c0b602b0c148583d004e1371b6bc3385f7e35cb",
         intel: "634346c08cf405aaba8dfa42b404a4011a561952b344a9611ece3ee6de77cb1b"

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
