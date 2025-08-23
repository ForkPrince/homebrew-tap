cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.51.6"
  sha256 arm:   "5a225bfffe60e109caac06e06043b122a11306d4276266f6ec9a9eb5e7ca2271",
         intel: "00b85f1b872d015cd04d2120e20c37e4138c63f858946c45fc08ed4751fcd9ef"

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
