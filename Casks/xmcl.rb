cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.56.2"
  sha256 arm:   "f17de5ab4245f4671ba8956a5f2ffd5ba3725fbe7d9091ce8455fc67d3085894",
         intel: "06a7d5189877e30800110cc4ce97defaa6a9c1a6091c6c57c3f239cd53e72b36"

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
