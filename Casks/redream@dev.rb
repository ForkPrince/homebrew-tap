cask "redream@dev" do
  version "1.5.0-1133-g03c2ae9"
  sha256 "8972af384f825125aa44819dc56afc488f72cb5142aea8f7813b406554227cca"

  url "https://redream.io/download/redream.universal-mac-v#{version}.tar.gz"
  name "redream"
  desc "Dreamcast emulator"
  homepage "https://redream.io/"

  livecheck do
    url "https://redream.io/download"
    regex(/redream\.universal-mac-v(\d+(?:\.\d+)*(?:-\d+-g[0-9a-f]+)?)\.t/i)
  end

  conflicts_with cask: "redream"

  app "redream.app"

  zap trash: [
    "~/Library/Application Support/redream",
    "~/Library/Saved Application State/io.recompiled.redream.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
