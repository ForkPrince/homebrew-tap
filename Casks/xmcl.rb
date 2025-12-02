cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.53.0"
  sha256 arm:   "59b2d4914f7c2bcad252406665e6dc20b5b79dcf995514f569d93c0024717bab",
         intel: "6f0fefdc92f200b3ab13ad65b3871cd7c6e738ff2236fcc750a82dce555d196b"

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
