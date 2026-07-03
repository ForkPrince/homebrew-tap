cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.60.0"
  sha256 arm:   "0e1f5710b63bfcc177b5f9f2593c3f26a19695b0a992c630edcb89ecec5f27cd",
         intel: "ff882d4130ac26c7abf58ede7eabae779b142f5457a70a956cc254f5f18e216b"

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
