cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.56.3"
  sha256 arm:   "b42d0cb83e9bde0efa6ee92d3071560738aacb69a30a23eb717f0bb2d9e70c09",
         intel: "2b6c6031ef30f7e0ecbd1f1347e30f17876f009489ec9884f49de64befeea097"

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
