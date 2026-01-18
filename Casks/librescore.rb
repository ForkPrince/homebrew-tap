cask "librescore" do
  version "6.0.21"
  sha256 "8e6bc6234ff10fcc0d711970122e00b5bed369e279c6adcc0312c80d69939658"

  url "https://github.com/LibreScore/app-librescore/releases/download/v#{version}/LibreScore.dmg"
  name "LibreScore"
  desc "Open source, serverless, offline-first alternative to MuseScore.com"
  homepage "https://github.com/LibreScore/app-librescore"

  app "LibreScore.app"
end
