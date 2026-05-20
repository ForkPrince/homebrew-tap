cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.56.4"
  sha256 arm:   "23e23b826beba26e4d8dbe8b09dad49f5ad422ea5e7d4a70cb1de7056ad652df",
         intel: "8de0ecbfab635831b6dd9fc4580103ebbe5a523763298d69469815dc130cd0b8"

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
