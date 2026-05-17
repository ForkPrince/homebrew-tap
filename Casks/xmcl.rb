cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.56.1"
  sha256 arm:   "03694ded293f353f7d7db0ef07ca862965beab9900728bbb8726421899062efd",
         intel: "ffb602dbfe6327196a213c8a1a80fe105cd6fd6025e47199e510ff21cd37894b"

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
