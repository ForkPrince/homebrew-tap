cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.52.7"
  sha256 arm:   "70ba620154b5c034ef3154f001fa772c23431aa1be662be15427d2bfd00b52f6",
         intel: "f88b02f313156d2459cde289f3c6242836f20504ad35cbe4cfa5784e0001ff97"

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
