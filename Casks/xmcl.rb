cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.56.0"
  sha256 arm:   "40ddb89b6d55634865150c76dd3a3d08d671aa42143f0e9e249e4d9b123d6ecf",
         intel: "c47c6061ad94a2a6363e3d2775f6f3e53109d7ba2c3bb81888a7ccb188d8cec9"

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
