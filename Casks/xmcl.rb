cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.52.4"
  sha256 arm:   "804f034072ac99c0c95cebef6180d90a21bb48812857640824266ac77382bccc",
         intel: "6231c196a93006047c07fdad21a0bffb97f805380467c6e40b9b41c7cbc4646a"

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
