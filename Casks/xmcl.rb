cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.54.5"
  sha256 arm:   "77aabddc532340e910dcc94b28fcf4f46deed0096353425466b282da6b316df1",
         intel: "15aec79daa2d9f119e38dfac863881f7b7c738d3cca57b176f6dbfbebd63b22e"

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
