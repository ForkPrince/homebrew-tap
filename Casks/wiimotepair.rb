cask "wiimotepair" do
  version "1.0"
  sha256 "003cd40eafa153703584be813e4266a4706194daa5577f73c9452085434c6a7b"

  url "https://dl.dolphin-emu.org/misc/WiimotePair-#{version}.dmg"
  name "WiimotePair"
  desc "Utility app that pairs Wii Remotes to Macs"
  homepage "https://github.com/dolphin-emu/WiimotePair"

  app "WiimotePair.app"

  zap trash: [
    "~/Library/Application Scripts/org.dolphin-emu.WiimotePair",
    "~/Library/Containers/org.dolphin-emu.WiimotePair",
  ]
end
