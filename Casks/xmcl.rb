cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.56.8"
  sha256 arm:   "7a37777c70394da526ac77e4848df89d5ef94e50d4e7545627c5b283671230ff",
         intel: "caf42391e3bee19fa512eda4fad36459de98a00028f880c2319adbbff3260f2a"

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
