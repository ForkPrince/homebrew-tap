cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.54.1"
  sha256 arm:   "dc12d60ba46b9f74e2e4267b4ada86957d53b032e046c1740d8ffc4f173091e6",
         intel: "9baf44ca3649927e486897d3533725a028d5e980534929037e1882e7ea2074a5"

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
