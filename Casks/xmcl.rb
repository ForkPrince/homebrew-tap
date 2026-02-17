cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.54.4"
  sha256 arm:   "b2b7a8b219ba7b9980bc6b5ab988fc92305251be78c4ad3ec1947d8f11042fbb",
         intel: "3a87d31e517fba95b49d17c73bba2e638f5fc84a3740127153871d935f3f6ea5"

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
