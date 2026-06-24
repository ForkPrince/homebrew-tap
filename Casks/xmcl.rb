cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.59.0"
  sha256 arm:   "deb0365adaadc3f76e34367e6cb59b32808cf651d3d9348180d2cb1c1165d4d1",
         intel: "3a2e3ba242ab219962b6ff6e97c8f705b0d53ac427917f7049a650c2c91cb65e"

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
