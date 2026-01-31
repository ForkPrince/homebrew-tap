cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.54.3"
  sha256 arm:   "2ccef2418c53111d08f02944774429f800d8b490d0940ae6a4ded5b16278f1c0",
         intel: "cc7c98878235c86b5f7bf2ecbbb76c1b837e088c73f326e4ef450b7ee9834c2e"

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
