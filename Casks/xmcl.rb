cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.51.4"
  sha256 arm:   "0ce98be3dce533a55dfc856ad4be74aff7262fee75fcc92113cc41b0e7111ccf",
         intel: "5e3308886e713735244a658efe74a31e48d69e93ca5b6d9a5d7be2b427ab4e28"

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
