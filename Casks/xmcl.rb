cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.55.0"
  sha256 arm:   "4e94102fdad552e62c653dec3c238370f7ac5735b73ec6e6df9bcba8e443d03a",
         intel: "7ad8b50adaccc9de92fd7b8dd1eb5e442d2cce1eea0508d8e65cd3b47a1b9606"

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
