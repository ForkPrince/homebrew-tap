cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.61.0"
  sha256 arm:   "b2cd0b4998ac31951afcefe2da7cef14ae3a7832eb5b651b59528cb1525d3062",
         intel: "88f1e0db488923d1a730404dd27054e16304927e3254948d54314547ae265882"

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
