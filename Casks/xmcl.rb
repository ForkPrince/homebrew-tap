cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.53.1"
  sha256 arm:   "49dafa9060ec98f90cb983dfe31763b26a741e887f15f3c3d6488c6f82dc0eaf",
         intel: "2253827c8c737e9702cedd1739d9a241dc198c9cec60eed24ab54a5ea304e376"

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
