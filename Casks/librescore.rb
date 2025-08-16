cask "librescore" do
  version "6.0.17"
  sha256 "b0edae0788a6cbb0319cf5c023a330641d3a8fcf512b162550900dccfd7561bb"

  url "https://github.com/LibreScore/app-librescore/releases/download/v#{version}/LibreScore.dmg"
  name "LibreScore"
  desc "Open source, serverless, offline-first alternative to MuseScore.com"
  homepage "https://github.com/LibreScore/app-librescore"

  app "LibreScore.app"
  No librescore settings found.
  Instead of a zap stanza, include the following comment:
  # No zap stanza required
end
