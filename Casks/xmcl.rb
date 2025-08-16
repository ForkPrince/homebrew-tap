cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.51.5"
  sha256 arm:   "c5f40d39f0e2804a5df8f19fc8ba2a8653df555e679dae1353c80930ca502886",
         intel: "34aeab95a7f422d4c46604973300d8d3feccc0c1bd065874b8cde5943d22db37"

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
