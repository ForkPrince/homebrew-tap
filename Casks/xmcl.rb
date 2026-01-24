cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.54.2"
  sha256 arm:   "d2e21679883fa3f6f598c70bc62ce2270f68ccf10cfcb335ca7594f4ad0296e1",
         intel: "cca59c2d1d7c923eb363bd5eddf0ccfbb4590274bb4dc71fc03167e4c8600e2b"

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
