cask "librescore" do
  version "6.0.22"
  sha256 "155a284c108f684f1c851f183a3890162f0bf46eda9c7202aee7d80d08c8874f"

  url "https://github.com/LibreScore/app-librescore/releases/download/v#{version}/LibreScore.dmg"
  name "LibreScore"
  desc "Open source, serverless, offline-first alternative to MuseScore.com"
  homepage "https://github.com/LibreScore/app-librescore"

  app "LibreScore.app"
end
