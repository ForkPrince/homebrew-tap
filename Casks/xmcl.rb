cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.52.5"
  sha256 arm:   "54031a96a40e5a4b0faeb56cf92470ef4dedb39960f1d322c24df2a101576a59",
         intel: "21a3517c763d4c93e4db9453239ddc9a74e4b07641a2b1eba2cab4efe28eb2a4"

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
