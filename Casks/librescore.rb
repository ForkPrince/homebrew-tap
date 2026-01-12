cask "librescore" do
  version "6.0.20"
  sha256 "26de0686e02158942b41b3041b119e1fc02120113a25f7637e110a4d39450e8f"

  url "https://github.com/LibreScore/app-librescore/releases/download/v#{version}/LibreScore.dmg"
  name "LibreScore"
  desc "Open source, serverless, offline-first alternative to MuseScore.com"
  homepage "https://github.com/LibreScore/app-librescore"

  app "LibreScore.app"
end
