cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.57.0"
  sha256 arm:   "0fa5cabdf875b92c84698eaa037aaf6c85198a1bb24ea969527c8cf1f34a8391",
         intel: "63615c2f3a3e0eb12aad20f39cdb493d7163cb3bf3819004a0a62afa07a574dc"

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
